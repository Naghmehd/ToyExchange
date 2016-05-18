var FilterbarSearch = React.createClass({

  getInitialState: function(){
    store.updateToyCount = this.updateToyCount
    return {
      condition: 'All',
      ageGroup: 'All',
      category: 'All',
      filterToysCount: 0
    };
  },

  setCondition: function (condition, label) {
    this.setState({
      condition: label
    });
    store.filterByCondition(condition);
  },

  setAgeGroup: function (ageGroup, label) {
    this.setState({
      ageGroup: label
    });
    store.filterByAgeGroup(ageGroup);
  },

  setCategory: function (category, label) {
    this.setState({
      category: label
    });
    store.filterByCategory(category);
  },

  updateToyCount: function (count) {
    this.setState({
      filterToysCount: count
    });
  },

  render: function(){

    return (
        <ToySearch>
          <div className="row data-query filterbar-search">
            <div className="col-xs-12 col-sm-3 filterby">Search {this.state.filterToysCount} Toys By</div>
              <div className="col-xs-12 col-sm-3 filter">
                <ul className="filter-dropdown pull-left">
                  <li className="dropdown">
                    <a href="#" className="dropdown-toggle" data-toggle="dropdown">
                    Condition: {this.state.condition} <b className="caret"></b>
                    </a>
                    <ul className="dropdown-menu" id="FilterContainer">
                      <li onClick={this.setCondition.bind(this, 'Like New', 'New')}><a href="#">Like New</a></li>
                      <li onClick={this.setCondition.bind(this, 'Good Condition', 'Good')}><a href="#">Good</a></li>
                      <li onClick={this.setCondition.bind(this, 'Fair Condition', 'Fair')}><a href="#">Fair</a></li>
                      <li onClick={this.setCondition.bind(this, 'All', 'All')}><a href="#">All</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div className="col-xs-12 col-sm-3 filter">
                <ul className="filter-dropdown pull-left">
                  <li className="dropdown">
                    <a href="#" className="dropdown-toggle" data-toggle="dropdown">
                      Age Group: {this.state.ageGroup} <b className="caret"></b>
                    </a>
                    <ul className="dropdown-menu" id="FilterContainer">
                      <li onClick={this.setAgeGroup.bind(this, 0, '0-1yr')}><a href="#">0-1yr</a></li>
                      <li onClick={this.setAgeGroup.bind(this, 1, '1-2yr')}><a href="#">1-2yrs</a></li>
                      <li onClick={this.setAgeGroup.bind(this, 2, '2-4yr')}><a href="#">2-4yrs</a></li>
                      <li onClick={this.setAgeGroup.bind(this, 4, '4-8yr')}><a href="#">4-8yrs</a></li>
                      <li onClick={this.setAgeGroup.bind(this, 'All', 'All')}><a href="#">All</a></li>

                    </ul>
                  </li>
                </ul>
            </div>
              <div className="col-xs-12 col-sm-3 filter">
                <ul className="filter-dropdown pull-left">
                  <li className="dropdown">
                    <a href="#" className="dropdown-toggle" data-toggle="dropdown">
                      Category: {this.state.category} <b className="caret"></b>
                    </a>
                    <ul className="dropdown-menu" id="FilterContainer">
                      <li onClick={this.setCategory.bind(this, 'Activity & Learning', 'Activity & Learning')}><a href="#">Activity & Learning</a></li>
                      <li onClick={this.setCategory.bind(this, 'Arts & Crafts', 'Arts & Crafts')}><a href="#">Arts & Crafts</a></li>
                      <li onClick={this.setCategory.bind(this, 'Baby Toys', 'Baby Toys')}><a href="#">Baby Toys</a></li>
                      <li onClick={this.setCategory.bind(this, 'Games', 'Games')}><a href="#">Games</a></li>
                      <li onClick={this.setCategory.bind(this, 'Dolls', 'Dolls')}><a href="#">Dolls</a></li>
                      <li onClick={this.setCategory.bind(this, 'All', 'All')}><a href="#">All</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
            </div>
          </ToySearch>
      );
    },
})
