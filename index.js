/**
 * @format
 */

import React from 'react';
import { NativeModules, Text } from 'react-native';

const { RNLib } = NativeModules;

const LibText = () => <Text>{RNLib.textFromLib}</Text>;

export default LibText;
