# Sunlight App

### Instructions
Create a Sinatra App that incorporates the Sunlight API

* every page should include links back to the homepage

**The Index should contain**

* a **search box** to search the Sunlight API for Legislators by **zipcode**.
* a list of favorited legislators

**Displaying the search results**

* Republican legislators should be **red**
* Democratic legislators should be **blue**
* Independents are **purple**

**Saving to the DB**

* Each search result should include a **button** to store the legislator as a favorite in the **database**
* Perform another Sunlight API query to get the specific legislator's data
* Favorited legislators should have firstname and lastname, party, phone, state, twitter_id, and in_office, votesmart_id, and bioguide_id in the database

**Extra**

* Display recent tweets for favorited legislators
* Add additional Search features to search by name, state

_Readings and Resources_

* [The Sunlight Foundation](http://sunlightfoundation.com/)
* [Sunlight API Documentation on Legislators](http://sunlightlabs.github.io/congress/legislators.html)
* [The Sunlight Gem on Github](https://github.com/sunlightlabs/ruby-sunlight)
* [Sinatra ActiveRecord Gem](https://github.com/bmizerany/sinatra-activerecord)
* [ActiveRecord Query Interface](http://guides.rubyonrails.org/active_record_querying.html)
* [Sinatra Documentation](http://www.sinatrarb.com/documentation.html)
* [HTML Form Tag](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/form)
* [HTML Input Tag](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/Input)

##### Useful Sunlight API Commands

Search by Zipcode

```ruby
congresspeople = Sunlight::Legislator.all_in_zipcode('11222')
```

Find by Attributes

```ruby
congressperson = Sunlight::Legislator.all_where(:firstname => "Joe", :gender => "M")
```