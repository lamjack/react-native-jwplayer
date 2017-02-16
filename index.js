"use strict"

import React, { Component, PropTypes } from 'react'
import {
    requireNativeComponent,
    NativeModules,
    Platform,
    DeviceEventEmitter
} from 'react-native'

module.exports = NativeModules.JWPlayerModule