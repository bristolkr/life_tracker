# life_tracker
rails app

Week 5 - Day 2

Take the previous "life_tracker" assignment, and extend it.

 Add a Person model.
 Change School and LifeEvent so they belong to a person.
 Change school and life event forms so you can choose the person when you create new ones.
 Add all current schools and life events to a person (or wipe them and start over.)
 Add a PeopleController; don't use scaffolding.
 The PeopleController's show action should show the schools a person attended and the life events that belong to them. Each list should be in chronological order.
 Add the foundation-rails gem to your Gemfile and use Foundation for styling.
 Change forms to use the Foundation classes to make them look awesome. (Alternately, use Twitter Bootstrap or Bourbon.)
 The root page of your app should show the latest schools and life events added and what person they belong to.
 Remove routes you don't need. Do you need an index for schools or life events?

 Bonus: Nest the schools and life events routes under people. If you do this, eliminate the user dropdown on your forms.

 Bonus Bonus: Look at polymorphic associations. Use them to add comments to both schools and life events.

 table
  thead
    tr
      th Name
      th Birth Date
      th Home Town
      th
      th
      th

  tbody
    - @people.each do |person|
      tr
        td = person.name
        td = person.birthdate
        td = person.hometown
        td = link_to 'Show', person
        td = link_to 'Edit', edit_person_path(person)
        td = link_to 'Remove', person, data: {:confirm => 'Are you sure?'}, :method => :delete

br
