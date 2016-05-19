var ToySearch = React.createClass ({

  getInitialState: function(){
    store.filterByCondition = this.filterByCondition
    store.filterByAgeGroup = this.filterByAgeGroup
    store.filterByCategory = this.filterByCategory
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
      store.updateToyCount(response.length);

    }.bind(this));

  },

  filterByCondition: function(condition){
    var filteredToys = this.state.allToys.filter(function(toy) {
      if (condition === 'All') {
        return true;
      }
      return toy.condition.toLowerCase() === condition.toLowerCase();
    });
    this.setState({filterToys: filteredToys});
    store.updateToyCount(filteredToys.length);
  },

  filterByAgeGroup: function(ageGroup){
    var filteredToys = this.state.allToys.filter(function(toy) {
      if (ageGroup === 'All') {
        return true;
      }
      return toy.age_group === ageGroup;
    });
    this.setState({filterToys: filteredToys});
    store.updateToyCount(filteredToys.length);
  },

  filterByCategory: function(category){
    var filteredToys = this.state.allToys.filter(function(toy) {
      if (category === 'All') {
        return true;
      }
      return toy.category.toLowerCase() === category.toLowerCase();
    });
    this.setState({filterToys: filteredToys});
    store.updateToyCount(filteredToys.length);
  },

  filterList: function(e){
    var searchReturn = this.state.allToys.filter(function (toy) {
      return (
        toy.brand.toLowerCase().indexOf(e.target.value.toLowerCase()) !== -1 ||
        toy.description.toLowerCase().indexOf(e.target.value.toLowerCase()) !== -1 ||
        toy.name.toLowerCase().indexOf(e.target.value.toLowerCase()) !== -1
      );
    }.bind(this));

    this.setState({
      filterToys: searchReturn,
      displayToys: searchReturn,
      query: e.target.value
    });
    store.updateToyCount(searchReturn.length);
  },

  render: function(){
    return (
      <section>
      <div>
      <input className='form-control search-bar' type='text'
             onChange={this.filterList} value={this.state.query}
             placeholder='What are you looking for?' />
      </div>
      {this.props.children}
        {this.state.filterToys.map(function (toy, index) {
          var showUrl = "/toys/" + toy.id
            return (
              <div key={index} className="col-xs-12 col-sm-6 col-md-4 image-height">
                <div className="row">
                  <div className="col-xs-12">
                      <img className="filter-image" src={toy.profile_image_url} width={200} height={200} mode='fit' className="img-responsive"  />
                    <p>{toy.name}</p>
                    <p className="upcase">{toy.category}</p>
                    <p className="upcase">{toy.condition}</p>
                    <p className="upcase">{toy.ageGroup}</p>
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
