"use strict"

import React, {Component, PropTypes} from 'react'
import {
    requireNativeComponent
} from 'react-native'

export default class JWPlayer extends Component {
    constructor() {
        super(...arguments)
    }

    render() {
        const nativeProps = Object.assign({}, this.props)

        return (
            <RCTJWPlayerView {...this.props}/>
        )
    }
}

const RCTJWPlayerView = requireNativeComponent('RCTJWPlayerView', JWPlayer, {})