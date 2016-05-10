var ToySearch = React.createClass ({

  getInitialState: function(){
    return {
      allToys:[],
      filterToys:[],
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
        filterToys: response
      });

    }.bind(this));
  },
  filterList: function(e){
    var searchReturn = this.state.allToys.filter(function (toy) {
      return ( toy.brand.toLowerCase().indexOf(e.target.value.toLowerCase()) !== -1 ||
              toy.category.toLowerCase().indexOf(e.target.value.toLowerCase()) !== -1 ||
              toy.condition.toLowerCase().indexOf(e.target.value.toLowerCase()) !== -1 ||
              toy.description.toLowerCase().indexOf(e.target.value.toLowerCase()) !== -1 ||
              toy.name.toLowerCase().indexOf(e.target.value.toLowerCase()) !== -1 );
    });
    this.setState({
      filterToys: searchReturn,
      query: e.target.value
    });
  },


  render: function(){
    return (
      <section>
      <div>
      <input className='form-control' type='text'
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
                      <img src={toy.profile_image_url} />
                    </div>
                  </div>
                  <div className="col-xs-12 small-box">
                    <p>{toy.name}</p>
                    <p> {toy.description}</p>
                    <div className="col-xs-12" className="conversation-lineup">
                    <a href= {showUrl} >Start a Conversation</a>
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
