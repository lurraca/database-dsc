'use strict';

describe('HubProfile', function() {
  var page;
  var searchPage;

  beforeEach(function() {
    searchPage = require('./hubSearch.po');
    page = require('./hubProfile.po');

    browser.get('#/hubs');

    searchPage.findHub('dogpatch-labs').click();
  });


  describe('Overview', function() {
    it("should display the logo", function() {
      expect(page.overview.isElementPresent(by.css('.logo'))).toBe(true);
    });


    it('should display the name', function() {
      expect(page.overview.getText()).toContain('Dogpatch Labs');
    });

    it('should display the tagline', function() {
      expect(page.overview.getText()).toContain('Dogpatch Labs is a pay to play co-working space for tech start-ups between seed and series a.'.toUpperCase());
    });

    it('should display the description', function() {
      expect(page.overview.getText()).toContain("Dogpatch Labs was founded in San Francisco in 2009 by Polaris Ventures. Since then it has housed a litany of successful startups including Instagram (sold to Facebook for $1 billion). Domestically it has been home to such success stories as Logentries and Intercom who have raised $10 million and $30 million respectively. In total @dogpatchlabs companies have raised over $250 million in angel and v ... read more");
    });
  });

  describe('Details', function() {
    it('should display Type', function() {
      expect(page.details.getText()).toContain('Co-working');
    });

    it('should display Founded', function() {
      expect(page.details.getText()).toContain('2008');
    });

    it('should display primary contact', function() {
      expect(page.details.getText()).toContain('Patrick Walsh');
    });

    it('should display primary contact detail', function() {
      expect(page.details.getText()).toContain('patrick@dogpatchlabs.com');
    });
  });

  describe('Alumni', function() {
    it("should display the hub alumni", function() {
      expect(page.alumni.getText()).toContain('Trustev')
      expect(page.alumni.getText()).toContain('Logentries')
      expect(page.alumni.getText()).toContain('Boxever')
      expect(page.alumni.getText()).toContain('Mustard')
    });
  });

});
