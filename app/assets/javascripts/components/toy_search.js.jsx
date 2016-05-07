var ToySearch = React.createClass ({

  getIntialState: function(){
    return {
      allToys:[],
      filterToys:[],
      search: ""
    };
  },

  filterList: function(e){
    var searchReturn = this.state.allToys.filter(function (toy) {
      return  toy.brand.toLowerCase().indexOf(e.target.value.toLowerCase()) !== -1 ||
              toy.category.toLowerCase().indexOf(e.target.value.toLowerCase()) !== -1 ||
              toy.condition.toLowerCase().indexOf(e.target.value.toLowerCase()) !== -1 ||
              toy.description.toLowerCase().indexOf(e.target.value.toLowerCase()) !== -1 ||
              toy.name.toLowerCase().indexOf(e.target.value.toLowerCase()) !== -1 ||
              toy.age_group.toLowerCase().indexOf(e.target.value.toLowerCase()) !== -1;
    });
    this.setSate ({
      filteredToys: searchReturn,
      search: e.target.value
    });
  },

  componentDidMount: function () {
    $.ajax({
      url: '/toys/',
      dataType: 'JSON',
      method: 'get'
    }).done(function (response){
      this.setState({
        allToys: response,
        filteredToys: response
      });
    }.bind(this));
  },

  render: function(){
    return (
      <section>
        {this.state.filteredToys.map(function (toy) {
            return (
              <div class="col-xs-4">
                <div class="row">
                  <div class="col-xs-12 toy-box">
                    <img scr={toy.picture_url}></img>
                  </div>
                <div class="co-xs-12">
                  <div class="col-xs-4 toy-box">
                    <div class="col-xs-12 toy-box">
                      <img scr={toy.picture_url}></img>
                    </div>
                  </div>
                  <div class="col-xs-12">
                    <p> {toy.description}</p>
                  </div>
                  <div class="col-xs-4">
                    <div class="col-xs-4">
                    <a href="/conversations#new/">Send a Message</a>
                    </div>
                  </div>
                  </div>
                </div>
              </div>
            );
         })}
        </section>
      );
    },
