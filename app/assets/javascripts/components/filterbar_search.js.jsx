var FilterbarSearch = React.createClass({

  getInitialState: function(){
    return {
      condition: '',
      ageGroup: '',
      category: ''
    };
  },

  setCondition: function (condition) {
    this.setState({
      condition: condition
    });
    store.filterByCondition(condition);
  },

  setAgeGroup: function (ageGroup) {
    this.setState({
      ageGroup: ageGroup
    });
    store.filterByAgeGroup(ageGroup);
  },

  setCategory: function (category) {
    this.setState({
      category: category
    });
    store.filterByCategory(category);
  },

  render: function(){

    return (
      <div className="row data-query filterbar-search">
        <div className="col-xs-3 filterby">Search By</div>
          <div className="col-xs-3 filter">
            <ul className="filter-dropdown pull-left">
              <li className="dropdown">
                <a href="#" className="dropdown-toggle" data-toggle="dropdown">
                  Condition <b className="caret"></b>
                </a>
                <ul className="dropdown-menu" id="FilterContainer">
                  <li onClick={this.setCondition.bind(this, 'Like New')}><a href="#">Like New</a></li>
                  <li onClick={this.setCondition.bind(this, 'Good Condition')}><a href="#">Good Condition</a></li>
                  <li onClick={this.setCondition.bind(this, 'Fair Condition')}><a href="#">Fair Condition</a></li>
                  <li onClick={this.setCondition.bind(this, 'All')}><a href="#">All</a></li>
                </ul>
              </li>
            </ul>
          </div>
          <div className="col-xs-3 filter">
            <ul className="filter-dropdown pull-left">
              <li className="dropdown">
                <a href="#" className="dropdown-toggle" data-toggle="dropdown">
                  Age Group <b className="caret"></b>
                </a>
                <ul className="dropdown-menu" id="FilterContainer">
                  <li onClick={this.setAgeGroup.bind(this, '0-1yr')}><a href="#">0-1yr</a></li>
                  <li onClick={this.setAgeGroup.bind(this, '1-2yrs')}><a href="#">1-2yrs</a></li>
                  <li onClick={this.setAgeGroup.bind(this, '2-4yrs')}><a href="#">2-4yrs</a></li>
                  <li onClick={this.setAgeGroup.bind(this, '4-8yrs')}><a href="#">4-8yrs</a></li>
                  <li onClick={this.setAgeGroup.bind(this, 'All')}><a href="#">All</a></li>

                </ul>
              </li>
            </ul>
        </div>
          <div className="col-xs-3 filter">
            <ul className="filter-dropdown pull-left">
              <li className="dropdown">
                <a href="#" className="dropdown-toggle" data-toggle="dropdown">
                  Category <b className="caret"></b>
                </a>
                <ul className="dropdown-menu" id="FilterContainer">
                  <li onClick={this.setCategory.bind(this, 'Activity & Learning')}><a href="#">Activity & Learning</a></li>
                  <li onClick={this.setCategory.bind(this, 'Arts & Crafts')}><a href="#">Arts & Crafts</a></li>
                  <li onClick={this.setCategory.bind(this, 'Baby Toys')}><a href="#">Baby Toys</a></li>
                  <li onClick={this.setCategory.bind(this, 'Games')}><a href="#">Games</a></li>
                  <li onClick={this.setCategory.bind(this, 'Dolls')}><a href="#">Dolls</a></li>
                  <li onClick={this.setCategory.bind(this, 'All')}><a href="#">All</a></li>
                </ul>
              </li>
            </ul>
          </div>

          <ToySearch  />


        </div>
      );
    },
})
