var ToySearch = React.createClass ({

  getInitialState: function(){
    store.filterByCondition = this.filterByCondition.bind(this)
    return {
      allToys:[],
      filterToys:[],
      displayToys:[],
      query: ''
    };
  },

  componentWillMount: function () {
    $.ajax({
      url: '/toys/',
      dataType: 'JSON',
      method: 'get'
    }).done(function (response){

      this.setState({
        allToys: response,
        filterToys: response,
        displayToys: response
      });

    }.bind(this));

  },

  filterByCondition: function(condition){
    var filteredToys = this.state.allToys.filter(function(toy) {
      if (condition === 'All') {
        return true
      }
      return toy.condition === condition;
    });
    this.setState({filterToys: filteredToys});
  },

  filterByAgeGroup: function(age_group){
    var filteredToys = this.state.allToys.filter(function(toy) {
      if (age_group === 'All') {
        return true
      }
      return toy.age_group === age_group;
    });
    this.setState({filterToys: filteredToys});
  },

  filterByCategory: function(category){
    var filteredToys = this.state.allToys.filter(function(toy) {
      if (category === 'All') {
        return true
      }
      return toy.category === category;
    });
    this.setState({filterToys: filteredToys});
  },

  filterList: function(e){
    var searchReturn = this.state.allToys.filter(function (toy) {
      return (
              toy.brand.toLowerCase().indexOf(e.target.value.toLowerCase()) !== -1 ||
              toy.category.toLowerCase().indexOf(e.target.value.toLowerCase()) !== -1 ||
              toy.description.toLowerCase().indexOf(e.target.value.toLowerCase()) !== -1 ||
              toy.name.toLowerCase().indexOf(e.target.value.toLowerCase()) !== -1 );
    }.bind(this));

    this.setState({
      filterToys: searchReturn,
      displayToys: searchReturn,
      query: e.target.value
    });
  },

  render: function(){
    return (
      <section>
      <div>
      <input className='form-control search-bar' type='text'
             onChange={this.filterList} value={this.state.query}
             placeholder='What are you looking for?' />
      </div>
        {this.state.filterToys.map(function (toy) {
          var showUrl = "/toys/" + toy.id
            return (
              <div className="col-xs-4">
                <div className="row">
                  <div className="col-xs-12">
                    <div className="col-xs-2 toy-box">
                      <img src={toy.profile_image_url} class="img-responsive"  />
                    </div>
                  </div>
                  <div className="col-xs-12 small-box">
                    <p>{toy.name}</p>
                    <p>{toy.category}</p>
                    <p>{toy.condition}</p>
                    <p>{toy.ageGroup}</p>
                    <p>{toy.description}</p>
                    <div className="col-xs-12" className="conversation-lineup">
                    <a href={showUrl}>Start a Conversation</a>
                    </div>
                  </div>
                </div>
              </div>
            );
         })}
        </section>
      );
    },
})
