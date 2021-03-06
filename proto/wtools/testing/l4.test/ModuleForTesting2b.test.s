( function _ModuleForTesting2b_test_s_()
{

'use strict';

if( typeof module !== 'undefined' )
{
  require( '../l4/testing2b/Include.s' );
  require( 'wTesting' );
}

let _ = _global_._test_;

// --
// test
// --

function trivial( test )
{
  test.case = 'square root of positive numbers';
  var got = _.squareRootOfMul( 1, 4 );
  test.identical( got, 2 );

  test.case = 'square root of negative numbers';
  var got = _.squareRootOfMul( -1, -4 );
  test.identical( got, 2 );

  test.case = 'square root of not a number values';
  var got = _.squareRootOfMul( 'a', 'b' );
  test.identical( got, NaN );
}

// --
// declare
// --

let Self =
{

  name : 'Tools.l4.ModuleForTesting2b',
  silencing : 1,

  tests :
  {
    trivial,
  },

}

//

Self = wTestSuite( Self );
if( typeof module !== 'undefined' && !module.parent )
wTester.test( Self.name );

})();
