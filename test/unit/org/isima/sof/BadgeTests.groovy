package org.isima.sof

import static org.junit.Assert.*

import grails.test.mixin.*
import grails.test.mixin.support.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.support.GrailsUnitTestMixin} for usage instructions
 */
@TestMixin(GrailsUnitTestMixin)
class BadgeTests {

    void setUp() {
    }

    void tearDown() {
        // Tear down logic here
    }

    void testType() {
		Badge badge = new Badge(type: "Bronze")
		assertEquals badge.toString(),"Bronze"
    }
}
