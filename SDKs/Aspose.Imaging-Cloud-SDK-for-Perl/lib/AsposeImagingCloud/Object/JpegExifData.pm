package AsposeImagingCloud::Object::JpegExifData;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use base "AsposeImagingCloud::Object::BaseObject";

#
#
#
#NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
#

my $swagger_types = {
    'Artist' => 'string',
    'Copyright' => 'string',
    'DateTime' => 'string',
    'ImageDescription' => 'string',
    'Make' => 'string',
    'Model' => 'string',
    'Orientation' => 'string',
    'PrimaryChromaticities' => 'ARRAY[double]',
    'ReferenceBlackWhite' => 'ARRAY[double]',
    'ResolutionUnit' => 'string',
    'Software' => 'string',
    'TransferFunction' => 'ARRAY[int]',
    'XResolution' => 'double',
    'YCbCrCoefficients' => 'ARRAY[double]',
    'YCbCrPositioning' => 'string',
    'YResolution' => 'double',
    'ApertureValue' => 'double',
    'BodySerialNumber' => 'string',
    'BrightnessValue' => 'double',
    'CFAPattern' => 'string',
    'CameraOwnerName' => 'string',
    'ColorSpace' => 'string',
    'ComponentsConfiguration' => 'string',
    'CompressedBitsPerPixel' => 'double',
    'Contrast' => 'string',
    'CustomRendered' => 'string',
    'DateTimeDigitized' => 'string',
    'DateTimeOriginal' => 'string',
    'DeviceSettingDescription' => 'string',
    'DigitalZoomRatio' => 'double',
    'ExifVersion' => 'string',
    'ExposureBiasValue' => 'double',
    'ExposureIndex' => 'double',
    'ExposureMode' => 'string',
    'ExposureProgram' => 'string',
    'ExposureTime' => 'double',
    'FNumber' => 'double',
    'FileSource' => 'string',
    'Flash' => 'string',
    'FlashEnergy' => 'double',
    'FlashpixVersion' => 'string',
    'FocalLength' => 'double',
    'FocalLengthIn35MmFilm' => 'int',
    'FocalPlaneResolutionUnit' => 'string',
    'FocalPlaneXResolution' => 'double',
    'FocalPlaneYResolution' => 'double',
    'GPSAltitude' => 'double',
    'GPSAltitudeRef' => 'string',
    'GPSAreaInformation' => 'string',
    'GPSDOP' => 'double',
    'GPSDestBearing' => 'double',
    'GPSDestBearingRef' => 'string',
    'GPSDestDistance' => 'double',
    'GPSDestDistanceRef' => 'string',
    'GPSDestLatitude' => 'ARRAY[double]',
    'GPSDestLatitudeRef' => 'string',
    'GPSDestLongitude' => 'ARRAY[double]',
    'GPSDestLongitudeRef' => 'string',
    'GPSDifferential' => 'int',
    'GPSImgDirection' => 'double',
    'GPSImgDirectionRef' => 'string',
    'GPSDateStamp' => 'string',
    'GPSLatitude' => 'ARRAY[double]',
    'GPSLatitudeRef' => 'string',
    'GPSLongitude' => 'ARRAY[double]',
    'GPSLongitudeRef' => 'string',
    'GPSMapDatum' => 'string',
    'GPSMeasureMode' => 'string',
    'GPSProcessingMethod' => 'string',
    'GPSSatellites' => 'string',
    'GPSSpeed' => 'double',
    'GPSSpeedRef' => 'string',
    'GPSStatus' => 'string',
    'GPSTimestamp' => 'ARRAY[double]',
    'GPSTrack' => 'string',
    'GPSTrackRef' => 'string',
    'GPSVersionID' => 'string',
    'GainControl' => 'string',
    'Gamma' => 'double',
    'ISOSpeed' => 'int',
    'ISOSpeedLatitudeYYY' => 'int',
    'ISOSpeedLatitudeZZZ' => 'int',
    'PhotographicSensitivity' => 'int',
    'ImageUniqueID' => 'string',
    'LensMake' => 'string',
    'LensModel' => 'string',
    'LensSerialNumber' => 'string',
    'LensSpecification' => 'ARRAY[double]',
    'LightSource' => 'string',
    'MakerNoteRawData' => 'string',
    'MaxApertureValue' => 'double',
    'MeteringMode' => 'string',
    'OECF' => 'string',
    'PixelXDimension' => 'int',
    'PixelYDimension' => 'int',
    'RecommendedExposureIndex' => 'int',
    'RelatedSoundFile' => 'string',
    'Saturation' => 'string',
    'SceneCaptureType' => 'string',
    'SceneType' => 'string',
    'SensingMethod' => 'string',
    'SensitivityType' => 'int',
    'Sharpness' => 'int',
    'ShutterSpeedValue' => 'double',
    'SpatialFrequencyResponse' => 'string',
    'SpectralSensitivity' => 'string',
    'StandardOutputSensitivity' => 'int',
    'SubjectArea' => 'ARRAY[int]',
    'SubjectDistance' => 'double',
    'SubjectDistanceRange' => 'string',
    'SubjectLocation' => 'ARRAY[int]',
    'SubsecTime' => 'string',
    'SubsecTimeDigitized' => 'string',
    'SubsecTimeOriginal' => 'string',
    'UserComment' => 'string',
    'WhiteBalance' => 'string',
    'WhitePoint' => 'ARRAY[double]'
};

my $attribute_map = {
    'Artist' => 'Artist',
    'Copyright' => 'Copyright',
    'DateTime' => 'DateTime',
    'ImageDescription' => 'ImageDescription',
    'Make' => 'Make',
    'Model' => 'Model',
    'Orientation' => 'Orientation',
    'PrimaryChromaticities' => 'PrimaryChromaticities',
    'ReferenceBlackWhite' => 'ReferenceBlackWhite',
    'ResolutionUnit' => 'ResolutionUnit',
    'Software' => 'Software',
    'TransferFunction' => 'TransferFunction',
    'XResolution' => 'XResolution',
    'YCbCrCoefficients' => 'YCbCrCoefficients',
    'YCbCrPositioning' => 'YCbCrPositioning',
    'YResolution' => 'YResolution',
    'ApertureValue' => 'ApertureValue',
    'BodySerialNumber' => 'BodySerialNumber',
    'BrightnessValue' => 'BrightnessValue',
    'CFAPattern' => 'CFAPattern',
    'CameraOwnerName' => 'CameraOwnerName',
    'ColorSpace' => 'ColorSpace',
    'ComponentsConfiguration' => 'ComponentsConfiguration',
    'CompressedBitsPerPixel' => 'CompressedBitsPerPixel',
    'Contrast' => 'Contrast',
    'CustomRendered' => 'CustomRendered',
    'DateTimeDigitized' => 'DateTimeDigitized',
    'DateTimeOriginal' => 'DateTimeOriginal',
    'DeviceSettingDescription' => 'DeviceSettingDescription',
    'DigitalZoomRatio' => 'DigitalZoomRatio',
    'ExifVersion' => 'ExifVersion',
    'ExposureBiasValue' => 'ExposureBiasValue',
    'ExposureIndex' => 'ExposureIndex',
    'ExposureMode' => 'ExposureMode',
    'ExposureProgram' => 'ExposureProgram',
    'ExposureTime' => 'ExposureTime',
    'FNumber' => 'FNumber',
    'FileSource' => 'FileSource',
    'Flash' => 'Flash',
    'FlashEnergy' => 'FlashEnergy',
    'FlashpixVersion' => 'FlashpixVersion',
    'FocalLength' => 'FocalLength',
    'FocalLengthIn35MmFilm' => 'FocalLengthIn35MmFilm',
    'FocalPlaneResolutionUnit' => 'FocalPlaneResolutionUnit',
    'FocalPlaneXResolution' => 'FocalPlaneXResolution',
    'FocalPlaneYResolution' => 'FocalPlaneYResolution',
    'GPSAltitude' => 'GPSAltitude',
    'GPSAltitudeRef' => 'GPSAltitudeRef',
    'GPSAreaInformation' => 'GPSAreaInformation',
    'GPSDOP' => 'GPSDOP',
    'GPSDestBearing' => 'GPSDestBearing',
    'GPSDestBearingRef' => 'GPSDestBearingRef',
    'GPSDestDistance' => 'GPSDestDistance',
    'GPSDestDistanceRef' => 'GPSDestDistanceRef',
    'GPSDestLatitude' => 'GPSDestLatitude',
    'GPSDestLatitudeRef' => 'GPSDestLatitudeRef',
    'GPSDestLongitude' => 'GPSDestLongitude',
    'GPSDestLongitudeRef' => 'GPSDestLongitudeRef',
    'GPSDifferential' => 'GPSDifferential',
    'GPSImgDirection' => 'GPSImgDirection',
    'GPSImgDirectionRef' => 'GPSImgDirectionRef',
    'GPSDateStamp' => 'GPSDateStamp',
    'GPSLatitude' => 'GPSLatitude',
    'GPSLatitudeRef' => 'GPSLatitudeRef',
    'GPSLongitude' => 'GPSLongitude',
    'GPSLongitudeRef' => 'GPSLongitudeRef',
    'GPSMapDatum' => 'GPSMapDatum',
    'GPSMeasureMode' => 'GPSMeasureMode',
    'GPSProcessingMethod' => 'GPSProcessingMethod',
    'GPSSatellites' => 'GPSSatellites',
    'GPSSpeed' => 'GPSSpeed',
    'GPSSpeedRef' => 'GPSSpeedRef',
    'GPSStatus' => 'GPSStatus',
    'GPSTimestamp' => 'GPSTimestamp',
    'GPSTrack' => 'GPSTrack',
    'GPSTrackRef' => 'GPSTrackRef',
    'GPSVersionID' => 'GPSVersionID',
    'GainControl' => 'GainControl',
    'Gamma' => 'Gamma',
    'ISOSpeed' => 'ISOSpeed',
    'ISOSpeedLatitudeYYY' => 'ISOSpeedLatitudeYYY',
    'ISOSpeedLatitudeZZZ' => 'ISOSpeedLatitudeZZZ',
    'PhotographicSensitivity' => 'PhotographicSensitivity',
    'ImageUniqueID' => 'ImageUniqueID',
    'LensMake' => 'LensMake',
    'LensModel' => 'LensModel',
    'LensSerialNumber' => 'LensSerialNumber',
    'LensSpecification' => 'LensSpecification',
    'LightSource' => 'LightSource',
    'MakerNoteRawData' => 'MakerNoteRawData',
    'MaxApertureValue' => 'MaxApertureValue',
    'MeteringMode' => 'MeteringMode',
    'OECF' => 'OECF',
    'PixelXDimension' => 'PixelXDimension',
    'PixelYDimension' => 'PixelYDimension',
    'RecommendedExposureIndex' => 'RecommendedExposureIndex',
    'RelatedSoundFile' => 'RelatedSoundFile',
    'Saturation' => 'Saturation',
    'SceneCaptureType' => 'SceneCaptureType',
    'SceneType' => 'SceneType',
    'SensingMethod' => 'SensingMethod',
    'SensitivityType' => 'SensitivityType',
    'Sharpness' => 'Sharpness',
    'ShutterSpeedValue' => 'ShutterSpeedValue',
    'SpatialFrequencyResponse' => 'SpatialFrequencyResponse',
    'SpectralSensitivity' => 'SpectralSensitivity',
    'StandardOutputSensitivity' => 'StandardOutputSensitivity',
    'SubjectArea' => 'SubjectArea',
    'SubjectDistance' => 'SubjectDistance',
    'SubjectDistanceRange' => 'SubjectDistanceRange',
    'SubjectLocation' => 'SubjectLocation',
    'SubsecTime' => 'SubsecTime',
    'SubsecTimeDigitized' => 'SubsecTimeDigitized',
    'SubsecTimeOriginal' => 'SubsecTimeOriginal',
    'UserComment' => 'UserComment',
    'WhiteBalance' => 'WhiteBalance',
    'WhitePoint' => 'WhitePoint'
};

# new object
sub new { 
    my ($class, %args) = @_; 
    my $self = { 
        #
        'Artist' => $args{'Artist'}, 
        #
        'Copyright' => $args{'Copyright'}, 
        #
        'DateTime' => $args{'DateTime'}, 
        #
        'ImageDescription' => $args{'ImageDescription'}, 
        #
        'Make' => $args{'Make'}, 
        #
        'Model' => $args{'Model'}, 
        #
        'Orientation' => $args{'Orientation'}, 
        #
        'PrimaryChromaticities' => $args{'PrimaryChromaticities'}, 
        #
        'ReferenceBlackWhite' => $args{'ReferenceBlackWhite'}, 
        #
        'ResolutionUnit' => $args{'ResolutionUnit'}, 
        #
        'Software' => $args{'Software'}, 
        #
        'TransferFunction' => $args{'TransferFunction'}, 
        #
        'XResolution' => $args{'XResolution'}, 
        #
        'YCbCrCoefficients' => $args{'YCbCrCoefficients'}, 
        #
        'YCbCrPositioning' => $args{'YCbCrPositioning'}, 
        #
        'YResolution' => $args{'YResolution'}, 
        #
        'ApertureValue' => $args{'ApertureValue'}, 
        #
        'BodySerialNumber' => $args{'BodySerialNumber'}, 
        #
        'BrightnessValue' => $args{'BrightnessValue'}, 
        #
        'CFAPattern' => $args{'CFAPattern'}, 
        #
        'CameraOwnerName' => $args{'CameraOwnerName'}, 
        #
        'ColorSpace' => $args{'ColorSpace'}, 
        #
        'ComponentsConfiguration' => $args{'ComponentsConfiguration'}, 
        #
        'CompressedBitsPerPixel' => $args{'CompressedBitsPerPixel'}, 
        #
        'Contrast' => $args{'Contrast'}, 
        #
        'CustomRendered' => $args{'CustomRendered'}, 
        #
        'DateTimeDigitized' => $args{'DateTimeDigitized'}, 
        #
        'DateTimeOriginal' => $args{'DateTimeOriginal'}, 
        #
        'DeviceSettingDescription' => $args{'DeviceSettingDescription'}, 
        #
        'DigitalZoomRatio' => $args{'DigitalZoomRatio'}, 
        #
        'ExifVersion' => $args{'ExifVersion'}, 
        #
        'ExposureBiasValue' => $args{'ExposureBiasValue'}, 
        #
        'ExposureIndex' => $args{'ExposureIndex'}, 
        #
        'ExposureMode' => $args{'ExposureMode'}, 
        #
        'ExposureProgram' => $args{'ExposureProgram'}, 
        #
        'ExposureTime' => $args{'ExposureTime'}, 
        #
        'FNumber' => $args{'FNumber'}, 
        #
        'FileSource' => $args{'FileSource'}, 
        #
        'Flash' => $args{'Flash'}, 
        #
        'FlashEnergy' => $args{'FlashEnergy'}, 
        #
        'FlashpixVersion' => $args{'FlashpixVersion'}, 
        #
        'FocalLength' => $args{'FocalLength'}, 
        #
        'FocalLengthIn35MmFilm' => $args{'FocalLengthIn35MmFilm'}, 
        #
        'FocalPlaneResolutionUnit' => $args{'FocalPlaneResolutionUnit'}, 
        #
        'FocalPlaneXResolution' => $args{'FocalPlaneXResolution'}, 
        #
        'FocalPlaneYResolution' => $args{'FocalPlaneYResolution'}, 
        #
        'GPSAltitude' => $args{'GPSAltitude'}, 
        #
        'GPSAltitudeRef' => $args{'GPSAltitudeRef'}, 
        #
        'GPSAreaInformation' => $args{'GPSAreaInformation'}, 
        #
        'GPSDOP' => $args{'GPSDOP'}, 
        #
        'GPSDestBearing' => $args{'GPSDestBearing'}, 
        #
        'GPSDestBearingRef' => $args{'GPSDestBearingRef'}, 
        #
        'GPSDestDistance' => $args{'GPSDestDistance'}, 
        #
        'GPSDestDistanceRef' => $args{'GPSDestDistanceRef'}, 
        #
        'GPSDestLatitude' => $args{'GPSDestLatitude'}, 
        #
        'GPSDestLatitudeRef' => $args{'GPSDestLatitudeRef'}, 
        #
        'GPSDestLongitude' => $args{'GPSDestLongitude'}, 
        #
        'GPSDestLongitudeRef' => $args{'GPSDestLongitudeRef'}, 
        #
        'GPSDifferential' => $args{'GPSDifferential'}, 
        #
        'GPSImgDirection' => $args{'GPSImgDirection'}, 
        #
        'GPSImgDirectionRef' => $args{'GPSImgDirectionRef'}, 
        #
        'GPSDateStamp' => $args{'GPSDateStamp'}, 
        #
        'GPSLatitude' => $args{'GPSLatitude'}, 
        #
        'GPSLatitudeRef' => $args{'GPSLatitudeRef'}, 
        #
        'GPSLongitude' => $args{'GPSLongitude'}, 
        #
        'GPSLongitudeRef' => $args{'GPSLongitudeRef'}, 
        #
        'GPSMapDatum' => $args{'GPSMapDatum'}, 
        #
        'GPSMeasureMode' => $args{'GPSMeasureMode'}, 
        #
        'GPSProcessingMethod' => $args{'GPSProcessingMethod'}, 
        #
        'GPSSatellites' => $args{'GPSSatellites'}, 
        #
        'GPSSpeed' => $args{'GPSSpeed'}, 
        #
        'GPSSpeedRef' => $args{'GPSSpeedRef'}, 
        #
        'GPSStatus' => $args{'GPSStatus'}, 
        #
        'GPSTimestamp' => $args{'GPSTimestamp'}, 
        #
        'GPSTrack' => $args{'GPSTrack'}, 
        #
        'GPSTrackRef' => $args{'GPSTrackRef'}, 
        #
        'GPSVersionID' => $args{'GPSVersionID'}, 
        #
        'GainControl' => $args{'GainControl'}, 
        #
        'Gamma' => $args{'Gamma'}, 
        #
        'ISOSpeed' => $args{'ISOSpeed'}, 
        #
        'ISOSpeedLatitudeYYY' => $args{'ISOSpeedLatitudeYYY'}, 
        #
        'ISOSpeedLatitudeZZZ' => $args{'ISOSpeedLatitudeZZZ'}, 
        #
        'PhotographicSensitivity' => $args{'PhotographicSensitivity'}, 
        #
        'ImageUniqueID' => $args{'ImageUniqueID'}, 
        #
        'LensMake' => $args{'LensMake'}, 
        #
        'LensModel' => $args{'LensModel'}, 
        #
        'LensSerialNumber' => $args{'LensSerialNumber'}, 
        #
        'LensSpecification' => $args{'LensSpecification'}, 
        #
        'LightSource' => $args{'LightSource'}, 
        #
        'MakerNoteRawData' => $args{'MakerNoteRawData'}, 
        #
        'MaxApertureValue' => $args{'MaxApertureValue'}, 
        #
        'MeteringMode' => $args{'MeteringMode'}, 
        #
        'OECF' => $args{'OECF'}, 
        #
        'PixelXDimension' => $args{'PixelXDimension'}, 
        #
        'PixelYDimension' => $args{'PixelYDimension'}, 
        #
        'RecommendedExposureIndex' => $args{'RecommendedExposureIndex'}, 
        #
        'RelatedSoundFile' => $args{'RelatedSoundFile'}, 
        #
        'Saturation' => $args{'Saturation'}, 
        #
        'SceneCaptureType' => $args{'SceneCaptureType'}, 
        #
        'SceneType' => $args{'SceneType'}, 
        #
        'SensingMethod' => $args{'SensingMethod'}, 
        #
        'SensitivityType' => $args{'SensitivityType'}, 
        #
        'Sharpness' => $args{'Sharpness'}, 
        #
        'ShutterSpeedValue' => $args{'ShutterSpeedValue'}, 
        #
        'SpatialFrequencyResponse' => $args{'SpatialFrequencyResponse'}, 
        #
        'SpectralSensitivity' => $args{'SpectralSensitivity'}, 
        #
        'StandardOutputSensitivity' => $args{'StandardOutputSensitivity'}, 
        #
        'SubjectArea' => $args{'SubjectArea'}, 
        #
        'SubjectDistance' => $args{'SubjectDistance'}, 
        #
        'SubjectDistanceRange' => $args{'SubjectDistanceRange'}, 
        #
        'SubjectLocation' => $args{'SubjectLocation'}, 
        #
        'SubsecTime' => $args{'SubsecTime'}, 
        #
        'SubsecTimeDigitized' => $args{'SubsecTimeDigitized'}, 
        #
        'SubsecTimeOriginal' => $args{'SubsecTimeOriginal'}, 
        #
        'UserComment' => $args{'UserComment'}, 
        #
        'WhiteBalance' => $args{'WhiteBalance'}, 
        #
        'WhitePoint' => $args{'WhitePoint'}
    }; 

    return bless $self, $class; 
}  

# get swagger type of the attribute
sub get_swagger_types {
    return $swagger_types;
}

# get attribute mappping
sub get_attribute_map {
    return $attribute_map;
}

1;
