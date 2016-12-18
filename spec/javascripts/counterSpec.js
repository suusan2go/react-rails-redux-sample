import * as testHelper from './testHelper'
import React from 'react';
import { expect } from 'chai';
import { shallow, mount, render } from 'enzyme';

const Root = require(testHelper.appPath('containers/Root.js')).default
const Counter = require(testHelper.appPath('components/Counter.js')).default

describe('<Counter />', () => {
  it('show Counter component', () => {
    const wrapper = mount(<Root counter={10} />);
    expect(wrapper.find(Counter)).to.have.length(1);
  });
});
