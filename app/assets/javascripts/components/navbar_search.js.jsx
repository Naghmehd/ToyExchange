var ToySearch = React.createClass({
  getInitialState: function () {
    return {
      filterQuery: '',
      toys: []
    };
  },
  handleChange: function (event) {
    var that = this;
    this.setState({
      filterQuery: event.target.value
    });
    var url = document.URL + "?query=" + event.target.value;
    console.log(url);
    $.getJSON(url, function(response){
        that.setState({
          toys: response
        })
    })
  },
  render: function () {
    return (
      <div className="container">
        <label for="searchbox"> Search:
          <input value={this.state.filterQuery} onChange={this.handleChange} type="text" />
        </label>
        <hr />
        {this.state.toys.map(function (toy){
          return (
            <ToyDisplay key={toy.id} name={toy.name}/>
          )
        })}
      </div>
    );
  }
});
