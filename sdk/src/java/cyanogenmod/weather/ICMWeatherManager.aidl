/*
 * Copyright (C) 2016 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package cyanogenmod.weather;

import cyanogenmod.weather.IWeatherServiceProviderChangeListener;
import cyanogenmod.weather.RequestInfo;

/** @hide */
interface ICMWeatherManager {
    oneway void updateWeather(in RequestInfo info);
    oneway void lookupCity(in RequestInfo info);
    oneway void registerWeatherServiceProviderChangeListener(
        in IWeatherServiceProviderChangeListener listener);
    oneway void unregisterWeatherServiceProviderChangeListener(
        in IWeatherServiceProviderChangeListener listener);
    String getActiveWeatherServiceProviderLabel();
    oneway void cancelRequest(in RequestInfo info);
}