.class public Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;
.super Ljava/lang/Object;
.source "GalleryExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$GpsDifferential;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$GpsTrackRef;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$GpsSpeedRef;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$GpsMeasureMode;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$GpsStatus;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$GpsAltitudeRef;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$GpsLongitudeRef;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$GpsLatitudeRef;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$SubjectDistance;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$Sharpness;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$Saturation;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$Contrast;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$GainControl;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$SceneType;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$FileSource;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$SensingMethod;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$LightSource;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$ComponentsConfiguration;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$SceneCapture;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$WhiteBalance;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$ExposureMode;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$ColorSpace;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$Flash;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$MeteringMode;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$ExposureProgram;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$PlanarConfiguration;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$PhotometricInterpretation;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$ResolutionUnit;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$Compression;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$YCbCrPositioning;,
        Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface$Orientation;
    }
.end annotation


# static fields
.field public static final CAMERA_INFO:I = 0x4

.field private static final DATETIME_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd kk:mm:ss"

.field public static final DATE_TIME:I = 0x1

.field public static final DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

.field public static final DEFINITION_NULL:I = 0x0

.field private static final GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field public static final GPS_LOCATION_CITY:I = 0x2

.field public static final GPS_LOCATION_THOROUGHFARE:I = 0x3

.field public static final IFD_NULL:I = -0x1

.field public static MAX_COMPONENT_COUNT:I = 0x0

.field private static final NULL_ARGUMENT_STRING:Ljava/lang/String; = "Argument is null"

.field public static final ORIENTATION_NORMAL:S = 0x1s

.field public static final ORIENTATION_ROTATE_180:S = 0x3s

.field public static final ORIENTATION_ROTATE_270:S = 0x8s

.field public static final ORIENTATION_ROTATE_90:S = 0x6s

.field public static final TAG_APERTURE_VALUE:I

.field public static final TAG_ARTIST:I

.field public static final TAG_BITS_PER_SAMPLE:I

.field public static final TAG_BRIGHTNESS_VALUE:I

.field public static final TAG_CFA_PATTERN:I

.field public static final TAG_COLOR_SPACE:I

.field public static final TAG_COMPONENTS_CONFIGURATION:I

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:I

.field public static final TAG_COMPRESSION:I

.field public static final TAG_CONTRAST:I

.field public static final TAG_COPYRIGHT:I

.field public static final TAG_CUSTOM_RENDERED:I

.field public static final TAG_DATE_TIME:I

.field public static final TAG_DATE_TIME_DIGITIZED:I

.field public static final TAG_DATE_TIME_ORIGINAL:I

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:I

.field public static final TAG_DIGITAL_ZOOM_RATIO:I

.field public static final TAG_EXIF_IFD:I

.field public static final TAG_EXIF_VERSION:I

.field public static final TAG_EXPOSURE_BIAS_VALUE:I

.field public static final TAG_EXPOSURE_INDEX:I

.field public static final TAG_EXPOSURE_MODE:I

.field public static final TAG_EXPOSURE_PROGRAM:I

.field public static final TAG_EXPOSURE_TIME:I

.field public static final TAG_FILE_SOURCE:I

.field public static final TAG_FLASH:I

.field public static final TAG_FLASHPIX_VERSION:I

.field public static final TAG_FLASH_ENERGY:I

.field public static final TAG_FOCAL_LENGTH:I

.field public static final TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:I

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:I

.field public static final TAG_F_NUMBER:I

.field public static final TAG_GAIN_CONTROL:I

.field public static final TAG_GPS_ALTITUDE:I

.field public static final TAG_GPS_ALTITUDE_REF:I

.field public static final TAG_GPS_AREA_INFORMATION:I

.field public static final TAG_GPS_DATE_STAMP:I

.field public static final TAG_GPS_DEST_BEARING:I

.field public static final TAG_GPS_DEST_BEARING_REF:I

.field public static final TAG_GPS_DEST_DISTANCE:I

.field public static final TAG_GPS_DEST_DISTANCE_REF:I

.field public static final TAG_GPS_DEST_LATITUDE:I

.field public static final TAG_GPS_DEST_LATITUDE_REF:I

.field public static final TAG_GPS_DEST_LONGITUDE:I

.field public static final TAG_GPS_DEST_LONGITUDE_REF:I

.field public static final TAG_GPS_DIFFERENTIAL:I

.field public static final TAG_GPS_DOP:I

.field public static final TAG_GPS_IFD:I

.field public static final TAG_GPS_IMG_DIRECTION:I

.field public static final TAG_GPS_IMG_DIRECTION_REF:I

.field public static final TAG_GPS_LATITUDE:I

.field public static final TAG_GPS_LATITUDE_REF:I

.field public static final TAG_GPS_LONGITUDE:I

.field public static final TAG_GPS_LONGITUDE_REF:I

.field public static final TAG_GPS_MAP_DATUM:I

.field public static final TAG_GPS_MEASURE_MODE:I

.field public static final TAG_GPS_PROCESSING_METHOD:I

.field public static final TAG_GPS_SATTELLITES:I

.field public static final TAG_GPS_SPEED:I

.field public static final TAG_GPS_SPEED_REF:I

.field public static final TAG_GPS_STATUS:I

.field public static final TAG_GPS_TIME_STAMP:I

.field public static final TAG_GPS_TRACK:I

.field public static final TAG_GPS_TRACK_REF:I

.field public static final TAG_GPS_VERSION_ID:I

.field public static final TAG_IMAGE_DESCRIPTION:I

.field public static final TAG_IMAGE_LENGTH:I

.field public static final TAG_IMAGE_UNIQUE_ID:I

.field public static final TAG_IMAGE_WIDTH:I

.field public static final TAG_INTEROPERABILITY_IFD:I

.field public static final TAG_INTEROPERABILITY_INDEX:I

.field public static final TAG_ISO_SPEED_RATINGS:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

.field public static final TAG_LIGHT_SOURCE:I

.field public static final TAG_MAKE:I

.field public static final TAG_MAKER_NOTE:I

.field public static final TAG_MAX_APERTURE_VALUE:I

.field public static final TAG_METERING_MODE:I

.field public static final TAG_MODEL:I

.field public static final TAG_NULL:I = -0x1

.field public static final TAG_OECF:I

.field public static final TAG_ORIENTATION:I

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:I

.field public static final TAG_PIXEL_X_DIMENSION:I

.field public static final TAG_PIXEL_Y_DIMENSION:I

.field public static final TAG_PLANAR_CONFIGURATION:I

.field public static final TAG_PRIMARY_CHROMATICITIES:I

.field public static final TAG_REFERENCE_BLACK_WHITE:I

.field public static final TAG_RELATED_SOUND_FILE:I

.field public static final TAG_RESOLUTION_UNIT:I

.field public static final TAG_ROWS_PER_STRIP:I

.field public static final TAG_SAMPLES_PER_PIXEL:I

.field public static final TAG_SATURATION:I

.field public static final TAG_SCENE_CAPTURE_TYPE:I

.field public static final TAG_SCENE_TYPE:I

.field public static final TAG_SENSING_METHOD:I

.field public static final TAG_SHARPNESS:I

.field public static final TAG_SHUTTER_SPEED_VALUE:I

.field public static final TAG_SOFTWARE:I

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:I

.field public static final TAG_SPECTRAL_SENSITIVITY:I

.field public static final TAG_STRIP_BYTE_COUNTS:I

.field public static final TAG_STRIP_OFFSETS:I

.field public static final TAG_SUBJECT_AREA:I

.field public static final TAG_SUBJECT_DISTANCE:I

.field public static final TAG_SUBJECT_DISTANCE_RANGE:I

.field public static final TAG_SUBJECT_LOCATION:I

.field public static final TAG_SUB_SEC_TIME:I

.field public static final TAG_SUB_SEC_TIME_DIGITIZED:I

.field public static final TAG_SUB_SEC_TIME_ORIGINAL:I

.field public static final TAG_TRANSFER_FUNCTION:I

.field public static final TAG_USER_COMMENT:I

.field public static final TAG_WHITE_BALANCE:I

.field public static final TAG_WHITE_POINT:I

.field public static final TAG_X_RESOLUTION:I

.field public static final TAG_Y_CB_CR_COEFFICIENTS:I

.field public static final TAG_Y_CB_CR_POSITIONING:I

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:I

.field public static final TAG_Y_RESOLUTION:I

.field private static sOffsetTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

.field private final mDateTimeStampFormat:Ljava/text/DateFormat;

.field private final mGPSDateStampFormat:Ljava/text/DateFormat;

.field private mTagInfo:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    sput v3, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->MAX_COMPONENT_COUNT:I

    const/16 v0, 0x100

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_IMAGE_WIDTH:I

    const/16 v0, 0x101

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_IMAGE_LENGTH:I

    const/16 v0, 0x102

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/16 v0, 0x103

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_COMPRESSION:I

    const/16 v0, 0x106

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    const/16 v0, 0x10e

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_IMAGE_DESCRIPTION:I

    const/16 v0, 0x10f

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_MAKE:I

    const/16 v0, 0x110

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_MODEL:I

    const/16 v0, 0x111

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_STRIP_OFFSETS:I

    const/16 v0, 0x112

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_ORIENTATION:I

    const/16 v0, 0x115

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    const/16 v0, 0x116

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_ROWS_PER_STRIP:I

    const/16 v0, 0x117

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    const/16 v0, 0x11a

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_X_RESOLUTION:I

    const/16 v0, 0x11b

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_Y_RESOLUTION:I

    const/16 v0, 0x11c

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_PLANAR_CONFIGURATION:I

    const/16 v0, 0x128

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_RESOLUTION_UNIT:I

    const/16 v0, 0x12d

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_TRANSFER_FUNCTION:I

    const/16 v0, 0x131

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SOFTWARE:I

    const/16 v0, 0x132

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_DATE_TIME:I

    const/16 v0, 0x13b

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_ARTIST:I

    const/16 v0, 0x13e

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_WHITE_POINT:I

    const/16 v0, 0x13f

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    const/16 v0, 0x211

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const/16 v0, 0x212

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    const/16 v0, 0x213

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    const/16 v0, 0x214

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    const/16 v0, -0x7d68

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_COPYRIGHT:I

    const/16 v0, -0x7897

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_EXIF_IFD:I

    const/16 v0, -0x77db

    invoke-static {v3, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_IFD:I

    const/16 v0, 0x201

    invoke-static {v1, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    const/16 v0, 0x202

    invoke-static {v1, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    const/16 v0, -0x7d66

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_EXPOSURE_TIME:I

    const/16 v0, -0x7d63

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_F_NUMBER:I

    const/16 v0, -0x77de

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_EXPOSURE_PROGRAM:I

    const/16 v0, -0x77dc

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    const/16 v0, -0x77d9

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_ISO_SPEED_RATINGS:I

    const/16 v0, -0x77d8

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_OECF:I

    const/16 v0, -0x7000

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_EXIF_VERSION:I

    const/16 v0, -0x6ffd

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    const/16 v0, -0x6ffc

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    const/16 v0, -0x6eff

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    const/16 v0, -0x6efe

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    const/16 v0, -0x6dff

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/16 v0, -0x6dfe

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_APERTURE_VALUE:I

    const/16 v0, -0x6dfd

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_BRIGHTNESS_VALUE:I

    const/16 v0, -0x6dfc

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    const/16 v0, -0x6dfb

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_MAX_APERTURE_VALUE:I

    const/16 v0, -0x6dfa

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SUBJECT_DISTANCE:I

    const/16 v0, -0x6df9

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_METERING_MODE:I

    const/16 v0, -0x6df8

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_LIGHT_SOURCE:I

    const/16 v0, -0x6df7

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_FLASH:I

    const/16 v0, -0x6df6

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_FOCAL_LENGTH:I

    const/16 v0, -0x6dec

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SUBJECT_AREA:I

    const/16 v0, -0x6d84

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_MAKER_NOTE:I

    const/16 v0, -0x6d7a

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_USER_COMMENT:I

    const/16 v0, -0x6d70

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SUB_SEC_TIME:I

    const/16 v0, -0x6d6f

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    const/16 v0, -0x6d6e

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    const/16 v0, -0x6000

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_FLASHPIX_VERSION:I

    const/16 v0, -0x5fff

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_COLOR_SPACE:I

    const/16 v0, -0x5ffe

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_PIXEL_X_DIMENSION:I

    const/16 v0, -0x5ffd

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    const/16 v0, -0x5ffc

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_RELATED_SOUND_FILE:I

    const/16 v0, -0x5ffb

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_INTEROPERABILITY_IFD:I

    const/16 v0, -0x5df5

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_FLASH_ENERGY:I

    const/16 v0, -0x5df4

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    const/16 v0, -0x5df2

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    const/16 v0, -0x5df1

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    const/16 v0, -0x5df0

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    const/16 v0, -0x5dec

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SUBJECT_LOCATION:I

    const/16 v0, -0x5deb

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_EXPOSURE_INDEX:I

    const/16 v0, -0x5de9

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SENSING_METHOD:I

    const/16 v0, -0x5d00

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_FILE_SOURCE:I

    const/16 v0, -0x5cff

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SCENE_TYPE:I

    const/16 v0, -0x5cfe

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_CFA_PATTERN:I

    const/16 v0, -0x5bff

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_CUSTOM_RENDERED:I

    const/16 v0, -0x5bfe

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_EXPOSURE_MODE:I

    const/16 v0, -0x5bfd

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_WHITE_BALANCE:I

    const/16 v0, -0x5bfc

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    const/16 v0, -0x5bfb

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    const/16 v0, -0x5bfa

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    const/16 v0, -0x5bf9

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GAIN_CONTROL:I

    const/16 v0, -0x5bf8

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_CONTRAST:I

    const/16 v0, -0x5bf7

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SATURATION:I

    const/16 v0, -0x5bf6

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SHARPNESS:I

    const/16 v0, -0x5bf5

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    const/16 v0, -0x5bf4

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    const/16 v0, -0x5be0

    invoke-static {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    invoke-static {v4, v3, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_VERSION_ID:I

    invoke-static {v4, v1, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_LATITUDE_REF:I

    invoke-static {v4, v2, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_LATITUDE:I

    invoke-static {v4, v5, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-static {v4, v4, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_LONGITUDE:I

    const/4 v0, 0x5

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_ALTITUDE_REF:I

    const/4 v0, 0x6

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_ALTITUDE:I

    const/4 v0, 0x7

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_TIME_STAMP:I

    const/16 v0, 0x8

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_SATTELLITES:I

    const/16 v0, 0x9

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_STATUS:I

    const/16 v0, 0xa

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_MEASURE_MODE:I

    const/16 v0, 0xb

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_DOP:I

    const/16 v0, 0xc

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_SPEED_REF:I

    const/16 v0, 0xd

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_SPEED:I

    const/16 v0, 0xe

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_TRACK_REF:I

    const/16 v0, 0xf

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_TRACK:I

    const/16 v0, 0x10

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const/16 v0, 0x11

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_IMG_DIRECTION:I

    const/16 v0, 0x12

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_MAP_DATUM:I

    const/16 v0, 0x13

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    const/16 v0, 0x14

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_DEST_LATITUDE:I

    const/16 v0, 0x15

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_DEST_LONGITUDE_REF:I

    const/16 v0, 0x16

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_DEST_LONGITUDE:I

    const/16 v0, 0x17

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    const/16 v0, 0x18

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_DEST_BEARING:I

    const/16 v0, 0x19

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    const/16 v0, 0x1a

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_DEST_DISTANCE:I

    const/16 v0, 0x1b

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/16 v0, 0x1c

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_AREA_INFORMATION:I

    const/16 v0, 0x1d

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_DATE_STAMP:I

    const/16 v0, 0x1e

    invoke-static {v4, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_DIFFERENTIAL:I

    invoke-static {v5, v1, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget-object v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_IFD:I

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-void
.end method

.method protected static closeSilently(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static convertLatOrLongToDouble([Lcom/sec/android/mimage/photoretouching/exif/Rational;Ljava/lang/String;)D
    .locals 14

    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p0, v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/exif/Rational;->toDouble()D

    move-result-wide v0

    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/exif/Rational;->toDouble()D

    move-result-wide v4

    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/exif/Rational;->toDouble()D

    move-result-wide v8

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    div-double v10, v4, v10

    add-double/2addr v10, v0

    const-wide v12, 0x40ac200000000000L    # 3600.0

    div-double v12, v8, v12

    add-double v6, v10, v12

    const-string v3, "S"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "W"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    neg-double v6, v6

    :cond_1
    return-wide v6

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method public static defineTag(IS)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(ISZ)I

    move-result v0

    return v0
.end method

.method public static defineTag(ISZ)I
    .locals 2

    if-eqz p2, :cond_0

    sget v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->MAX_COMPONENT_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->MAX_COMPONENT_COUNT:I

    :cond_0
    const v0, 0xffff

    and-int/2addr v0, p1

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x400

    const/4 v3, 0x0

    new-array v0, v4, [B

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static getAllowedIfdFlagsFromInfo(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method protected static getAllowedIfdsFromInfo(I)[I
    .locals 10

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/exif/IfdData;->getIfds()[I

    move-result-object v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v8, 0x5

    if-ge v1, v8, :cond_1

    shr-int v8, v2, v1

    and-int/lit8 v0, v8, 0x1

    const/4 v8, 0x1

    if-ne v0, v8, :cond_0

    aget v8, v3, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_3

    const/4 v7, 0x0

    :cond_2
    return-object v7

    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v7, v8, [I

    const/4 v4, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v5, v4, 0x1

    aput v1, v7, v4

    move v4, v5

    goto :goto_1
.end method

.method protected static getComponentCountFromInfo(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method protected static getFlagsFromAllowedIfds([I)I
    .locals 8

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_2

    :cond_0
    move v0, v4

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/exif/IfdData;->getIfds()[I

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    const/4 v5, 0x5

    if-ge v1, v5, :cond_1

    array-length v6, p0

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_3

    aget v3, p0, v5

    aget v7, v2, v1

    if-ne v7, v3, :cond_4

    const/4 v5, 0x1

    shl-int/2addr v5, v1

    or-int/2addr v0, v5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private getLocation(Landroid/content/Context;[DI)Ljava/lang/String;
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    const-string v2, "JW getLocation"

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    const/4 v9, 0x0

    aget-wide v2, p2, v4

    cmpl-double v2, v2, v10

    if-eqz v2, :cond_0

    aget-wide v2, p2, v6

    cmpl-double v2, v2, v10

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JW latitudeInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v4, p2, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JW longitudeInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v4, p2, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    new-instance v1, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    const/4 v2, 0x0

    :try_start_0
    aget-wide v2, p2, v2

    const/4 v4, 0x1

    aget-wide v4, p2, v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JW location="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logD(Ljava/lang/String;)V

    return-object v9

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getOrientationValueForRotation(I)S
    .locals 1

    rem-int/lit16 p0, p0, 0x168

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x168

    :cond_0
    const/16 v0, 0x5a

    if-ge p0, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0xb4

    if-ge p0, v0, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/16 v0, 0x10e

    if-ge p0, v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static getRotationForOrientationValue(S)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getTrueIfd(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static getTrueTagKey(I)S
    .locals 1

    int-to-short v0, p0

    return v0
.end method

.method protected static getTypeFromInfo(I)S
    .locals 1

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private initTagInfo()V
    .locals 13

    const/4 v10, 0x2

    new-array v5, v10, [I

    fill-array-data v5, :array_0

    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v6, v10, 0x18

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_MAKE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_IMAGE_WIDTH:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_IMAGE_LENGTH:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_COMPRESSION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_ORIENTATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_PLANAR_CONFIGURATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_X_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_Y_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_RESOLUTION_UNIT:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_STRIP_OFFSETS:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_ROWS_PER_STRIP:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_TRANSFER_FUNCTION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v6

    or-int/lit16 v12, v12, 0x300

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_WHITE_POINT:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x6

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x6

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_DATE_TIME:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x14

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_IMAGE_DESCRIPTION:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_MAKE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_MODEL:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SOFTWARE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_ARTIST:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_COPYRIGHT:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_EXIF_IFD:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_IFD:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v6

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v10, 0x1

    new-array v4, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput v11, v4, v10

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v7, v10, 0x18

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v7

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v7

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v10, 0x1

    new-array v0, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x2

    aput v11, v0, v10

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v1, v10, 0x18

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_EXIF_VERSION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_FLASHPIX_VERSION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_COLOR_SPACE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_PIXEL_X_DIMENSION:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_MAKER_NOTE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_USER_COMMENT:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_RELATED_SOUND_FILE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0xd

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x14

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x14

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SUB_SEC_TIME:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x21

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_EXPOSURE_TIME:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_F_NUMBER:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_EXPOSURE_PROGRAM:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_ISO_SPEED_RATINGS:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_OECF:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_APERTURE_VALUE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_BRIGHTNESS_VALUE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_MAX_APERTURE_VALUE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SUBJECT_DISTANCE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_METERING_MODE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_LIGHT_SOURCE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_FLASH:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_FOCAL_LENGTH:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SUBJECT_AREA:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_FLASH_ENERGY:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SUBJECT_LOCATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_EXPOSURE_INDEX:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SENSING_METHOD:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_FILE_SOURCE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SCENE_TYPE:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_CFA_PATTERN:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_CUSTOM_RENDERED:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_EXPOSURE_MODE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_WHITE_BALANCE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GAIN_CONTROL:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_CONTRAST:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SATURATION:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SHARPNESS:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_INTEROPERABILITY_IFD:I

    const/high16 v12, 0x40000

    or-int/2addr v12, v1

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v10, 0x1

    new-array v2, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x4

    aput v11, v2, v10

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v3, v10, 0x18

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_VERSION_ID:I

    const/high16 v12, 0x10000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x4

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_LATITUDE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_LONGITUDE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_LATITUDE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_LONGITUDE:I

    const/high16 v12, 0xa0000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_ALTITUDE_REF:I

    const/high16 v12, 0x10000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_ALTITUDE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_TIME_STAMP:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x3

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_SATTELLITES:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_STATUS:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_MEASURE_MODE:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_DOP:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_SPEED_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_SPEED:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_TRACK_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_TRACK:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_IMG_DIRECTION:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_MAP_DATUM:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_DEST_LATITUDE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_DEST_BEARING:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_DEST_DISTANCE:I

    const/high16 v12, 0x50000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_AREA_INFORMATION:I

    const/high16 v12, 0x70000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_DATE_STAMP:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0xb

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_DIFFERENTIAL:I

    const/high16 v12, 0x30000

    or-int/2addr v12, v3

    or-int/lit8 v12, v12, 0xb

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v10, 0x1

    new-array v8, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x3

    aput v11, v8, v10

    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v10

    shl-int/lit8 v9, v10, 0x18

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v11, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    const/high16 v12, 0x20000

    or-int/2addr v12, v9

    or-int/lit8 v12, v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method protected static isIfdAllowed(II)Z
    .locals 5

    const/4 v3, 0x1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/exif/IfdData;->getIfds()[I

    move-result-object v2

    invoke-static {p0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    aget v4, v2, v0

    if-ne p1, v4, :cond_0

    shr-int v4, v1, v0

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_0

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected static isOffsetTag(S)Z
    .locals 2

    sget-object v0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static toExifLatLong(D)[Lcom/sec/android/mimage/photoretouching/exif/Rational;
    .locals 10

    const-wide/16 v8, 0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    double-to-int v0, p0

    int-to-double v4, v0

    sub-double v4, p0, v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double p0, v4, v6

    double-to-int v1, p0

    int-to-double v4, v1

    sub-double v4, p0, v4

    const-wide v6, 0x40b7700000000000L    # 6000.0

    mul-double p0, v4, v6

    double-to-int v2, p0

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/sec/android/mimage/photoretouching/exif/Rational;

    const/4 v4, 0x0

    new-instance v5, Lcom/sec/android/mimage/photoretouching/exif/Rational;

    int-to-long v6, v0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/exif/Rational;-><init>(JJ)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/sec/android/mimage/photoretouching/exif/Rational;

    int-to-long v6, v1

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/exif/Rational;-><init>(JJ)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Lcom/sec/android/mimage/photoretouching/exif/Rational;

    int-to-long v6, v2

    const-wide/16 v8, 0x64

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sec/android/mimage/photoretouching/exif/Rational;-><init>(JJ)V

    aput-object v5, v3, v4

    return-object v3
.end method


# virtual methods
.method public addDateTimeStampTag(IJLjava/util/TimeZone;)Z
    .locals 4

    const/4 v1, 0x0

    sget v2, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_DATE_TIME:I

    if-eq p1, v2, :cond_0

    sget v2, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    if-eq p1, v2, :cond_0

    sget v2, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    if-ne p1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v2, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->setTag(Lcom/sec/android/mimage/photoretouching/exif/ExifTag;)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addGpsTags(DD)Z
    .locals 9

    const-wide/16 v6, 0x0

    sget v4, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_LATITUDE:I

    invoke-static {p1, p2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->toExifLatLong(D)[Lcom/sec/android/mimage/photoretouching/exif/Rational;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    move-result-object v1

    sget v4, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-static {p3, p4}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->toExifLatLong(D)[Lcom/sec/android/mimage/photoretouching/exif/Rational;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    move-result-object v3

    sget v5, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_LATITUDE_REF:I

    cmpl-double v4, p1, v6

    if-ltz v4, :cond_1

    const-string v4, "N"

    :goto_0
    invoke-virtual {p0, v5, v4}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    move-result-object v0

    sget v5, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_LONGITUDE_REF:I

    cmpl-double v4, p3, v6

    if-ltz v4, :cond_2

    const-string v4, "E"

    :goto_1
    invoke-virtual {p0, v5, v4}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    if-nez v2, :cond_3

    :cond_0
    const/4 v4, 0x0

    :goto_2
    return v4

    :cond_1
    const-string v4, "S"

    goto :goto_0

    :cond_2
    const-string v4, "W"

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->setTag(Lcom/sec/android/mimage/photoretouching/exif/ExifTag;)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->setTag(Lcom/sec/android/mimage/photoretouching/exif/ExifTag;)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->setTag(Lcom/sec/android/mimage/photoretouching/exif/ExifTag;)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->setTag(Lcom/sec/android/mimage/photoretouching/exif/ExifTag;)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    const/4 v4, 0x1

    goto :goto_2
.end method

.method public buildTag(IILjava/lang/Object;)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-eqz v6, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move-object v0, v7

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTypeFromInfo(I)S

    move-result v2

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v5, 0x1

    :goto_1
    invoke-static {v6, p2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->isIfdAllowed(II)Z

    move-result v1

    if-nez v1, :cond_4

    move-object v0, v7

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTrueTagKey(I)S

    move-result v1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;-><init>(SSIIZ)V

    invoke-virtual {v0, p3}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v7

    goto :goto_0
.end method

.method public buildTag(ILjava/lang/Object;)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;
    .locals 2

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTrueIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->buildTag(IILjava/lang/Object;)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    move-result-object v1

    return-object v1
.end method

.method protected buildUninitializedTag(I)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-nez v6, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTypeFromInfo(I)S

    move-result v2

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTrueIfd(I)I

    move-result v4

    new-instance v0, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;-><init>(SSIIZ)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public clearExif()V
    .locals 2

    new-instance v0, Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    return-void
.end method

.method public deleteTag(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->deleteTag(II)V

    return-void
.end method

.method public deleteTag(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->removeTag(SI)V

    return-void
.end method

.method public forceRewriteExif(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getAllTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sec/android/mimage/photoretouching/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    new-instance v7, Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    sget-object v8, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v7, v8}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0, v5, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->readExif([B)V

    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->setTags(Ljava/util/Collection;)V

    invoke-virtual {p0, v3, p1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->writeExif([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_0
    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    :cond_1
    return-void

    :catch_0
    move-exception v2

    :goto_0
    :try_start_3
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v7

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_2
    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    throw v7

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_1

    :catchall_2
    move-exception v7

    move-object v0, v1

    move-object v4, v5

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v4, v5

    goto :goto_0

    :catch_2
    move-exception v2

    move-object v0, v1

    move-object v4, v5

    goto :goto_0
.end method

.method public getActualTagCount(II)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTag(II)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getComponentCount()I

    move-result v1

    goto :goto_0
.end method

.method public getAllTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/mimage/photoretouching/exif/ExifTag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefinedTagCount(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getComponentCountFromInfo(I)I

    move-result v1

    goto :goto_0
.end method

.method public getDefinedTagDefaultIfd(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTrueIfd(I)I

    move-result v1

    goto :goto_0
.end method

.method public getDefinedTagType(I)S
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTypeFromInfo(I)S

    move-result v1

    goto :goto_0
.end method

.method public getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 6

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v1, Lcom/sec/android/mimage/photoretouching/exif/ExifOutputStream;

    invoke-direct {v1, p1, p0}, Lcom/sec/android/mimage/photoretouching/exif/ExifOutputStream;-><init>(Ljava/io/OutputStream;Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->forceGetValueAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->logI(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/exif/ExifOutputStream;->setExifData(Lcom/sec/android/mimage/photoretouching/exif/ExifData;)V

    return-object v1
.end method

.method public getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public getLatLongAsDoubles()[D
    .locals 8

    const/4 v6, 0x3

    sget v5, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_LATITUDE:I

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagRationalValues(I)[Lcom/sec/android/mimage/photoretouching/exif/Rational;

    move-result-object v1

    sget v5, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_LATITUDE_REF:I

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v2

    sget v5, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagRationalValues(I)[Lcom/sec/android/mimage/photoretouching/exif/Rational;

    move-result-object v3

    sget v5, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    array-length v5, v1

    if-lt v5, v6, :cond_0

    array-length v5, v3

    if-ge v5, v6, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v5, 0x2

    new-array v0, v5, [D

    const/4 v5, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->convertLatOrLongToDouble([Lcom/sec/android/mimage/photoretouching/exif/Rational;Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v0, v5

    const/4 v5, 0x1

    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->convertLatOrLongToDouble([Lcom/sec/android/mimage/photoretouching/exif/Rational;Ljava/lang/String;)D

    move-result-wide v6

    aput-wide v6, v0, v5

    goto :goto_0
.end method

.method public getTag(I)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTag(II)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    move-result-object v1

    return-object v1
.end method

.method public getTag(II)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;
    .locals 2

    invoke-static {p2}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-static {p1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->getTag(SI)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    move-result-object v0

    goto :goto_0
.end method

.method public getTagByteValues(I)[B
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagByteValues(II)[B

    move-result-object v1

    return-object v1
.end method

.method public getTagByteValues(II)[B
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTag(II)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method protected getTagDefinition(SI)I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-static {p2, p1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(IS)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method protected getTagDefinitionForTag(Lcom/sec/android/mimage/photoretouching/exif/ExifTag;)I
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getDataType()S

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getIfd()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagDefinitionForTag(SSII)I

    move-result v3

    return v3
.end method

.method protected getTagDefinitionForTag(SSII)I
    .locals 15

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v9, -0x1

    :cond_0
    :goto_0
    return v9

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v7

    const/4 v9, -0x1

    array-length v13, v4

    const/4 v11, 0x0

    move v12, v11

    :goto_1
    if-ge v12, v13, :cond_0

    aget v5, v4, v12

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTypeFromInfo(I)S

    move-result v3

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getComponentCountFromInfo(I)I

    move-result v1

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getAllowedIfdsFromInfo(I)[I

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v9, -0x1

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    array-length v14, v2

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v14, :cond_3

    aget v8, v2, v11

    move/from16 v0, p4

    if-ne v8, v0, :cond_5

    const/4 v10, 0x1

    :cond_3
    if-eqz v10, :cond_6

    move/from16 v0, p2

    if-ne v0, v3, :cond_6

    move/from16 v0, p3

    if-eq v0, v1, :cond_4

    if-nez v1, :cond_6

    :cond_4
    move v9, v5

    goto :goto_0

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_1
.end method

.method protected getTagDefinitionsForTagId(S)[I
    .locals 11

    const/4 v8, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/exif/IfdData;->getIfds()[I

    move-result-object v5

    array-length v7, v5

    new-array v3, v7, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v6

    array-length v9, v5

    move v7, v8

    move v1, v0

    :goto_0
    if-ge v7, v9, :cond_0

    aget v4, v5, v7

    invoke-static {v4, p1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(IS)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    if-eqz v10, :cond_2

    add-int/lit8 v0, v1, 0x1

    aput v2, v3, v1

    :goto_1
    add-int/lit8 v7, v7, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 v7, 0x0

    :goto_2
    return-object v7

    :cond_1
    invoke-static {v3, v8, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v7

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected getTagInfo()Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->initTagInfo()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getTagIntValues(I)[I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagIntValues(II)[I

    move-result-object v1

    return-object v1
.end method

.method public getTagIntValues(II)[I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTag(II)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getValueAsInts()[I

    move-result-object v1

    goto :goto_0
.end method

.method public getTagRationalValue(I)Lcom/sec/android/mimage/photoretouching/exif/Rational;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagRationalValue(II)Lcom/sec/android/mimage/photoretouching/exif/Rational;

    move-result-object v1

    return-object v1
.end method

.method public getTagRationalValue(II)Lcom/sec/android/mimage/photoretouching/exif/Rational;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagRationalValues(II)[Lcom/sec/android/mimage/photoretouching/exif/Rational;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/sec/android/mimage/photoretouching/exif/Rational;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/exif/Rational;-><init>(Lcom/sec/android/mimage/photoretouching/exif/Rational;)V

    goto :goto_0
.end method

.method public getTagRationalValues(I)[Lcom/sec/android/mimage/photoretouching/exif/Rational;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagRationalValues(II)[Lcom/sec/android/mimage/photoretouching/exif/Rational;

    move-result-object v1

    return-object v1
.end method

.method public getTagRationalValues(II)[Lcom/sec/android/mimage/photoretouching/exif/Rational;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTag(II)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getValueAsRationals()[Lcom/sec/android/mimage/photoretouching/exif/Rational;

    move-result-object v1

    goto :goto_0
.end method

.method public getTagStringValue(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagStringValue(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTagStringValue(II)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTag(II)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTagValue(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagValue(II)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getTagValue(II)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTag(II)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getTagsForIfdId(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/mimage/photoretouching/exif/ExifTag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->getAllTagsForIfd(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTagsForTagId(S)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/mimage/photoretouching/exif/ExifTag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->getAllTagsForTagId(S)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()[B
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->hasUncompressedStrip()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getThumbnailBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->getUserComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasThumbnail()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    return v0
.end method

.method public isTagCountDefined(I)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getComponentCountFromInfo(I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isThumbnailCompressed()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    return v0
.end method

.method public readExif(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lcom/sec/android/mimage/photoretouching/exif/ExifReader;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/exif/ExifReader;-><init>(Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;)V

    invoke-virtual {v2, p1}, Lcom/sec/android/mimage/photoretouching/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/sec/android/mimage/photoretouching/exif/ExifData;
    :try_end_0
    .catch Lcom/sec/android/mimage/photoretouching/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid exif format : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readExif(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-void

    :catch_0
    move-exception v0

    :goto_0
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public readExif([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->readExif(Ljava/io/InputStream;)V

    return-void
.end method

.method public removeCompressedThumbnail()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->setCompressedThumbnail([B)V

    return-void
.end method

.method public removeTagDefinition(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method public resetTagDefinitions()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-void
.end method

.method public rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sec/android/mimage/photoretouching/exif/ExifTag;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v14, 0x0

    :try_start_0
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v15, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v16, 0x0

    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;)Lcom/sec/android/mimage/photoretouching/exif/ExifParser;
    :try_end_1
    .catch Lcom/sec/android/mimage/photoretouching/exif/ExifInvalidFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v16

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/mimage/photoretouching/exif/ExifParser;->getOffsetToExifEndFromSOF()I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v14, 0x0

    :try_start_3
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    move-object/from16 v0, v18

    invoke-direct {v11, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    cmp-long v2, v12, v6

    if-gez v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Filesize changed during operation"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catch_0
    move-exception v9

    move-object v10, v11

    :goto_0
    :try_start_5
    invoke-static {v10}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v2

    :goto_1
    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    :catch_1
    move-exception v9

    :try_start_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid exif format : "

    invoke-direct {v2, v3, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_2
    move-exception v9

    move-object v14, v15

    goto :goto_0

    :cond_0
    :try_start_7
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v17

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->closeSilently(Ljava/io/Closeable;)V

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    return v17

    :catchall_1
    move-exception v2

    move-object v14, v15

    goto :goto_1

    :catchall_2
    move-exception v2

    move-object v10, v11

    goto :goto_1

    :catch_3
    move-exception v9

    goto :goto_0
.end method

.method public rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sec/android/mimage/photoretouching/exif/ExifTag;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;

    invoke-direct {v2, p1, p0}, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;-><init>(Ljava/nio/ByteBuffer;Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;)V
    :try_end_0
    .catch Lcom/sec/android/mimage/photoretouching/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->modifyTag(Lcom/sec/android/mimage/photoretouching/exif/ExifTag;)V
    :try_end_1
    .catch Lcom/sec/android/mimage/photoretouching/exif/ExifInvalidFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid exif format : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/exif/ExifModifier;->commit()Z
    :try_end_2
    .catch Lcom/sec/android/mimage/photoretouching/exif/ExifInvalidFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    return v4

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public setCompressedThumbnail(Landroid/graphics/Bitmap;)Z
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->setCompressedThumbnail([B)Z

    move-result v1

    goto :goto_0
.end method

.method public setCompressedThumbnail([B)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->clearThumbnailAndStrips()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->setCompressedThumbnail([B)V

    const/4 v0, 0x1

    return v0
.end method

.method public setExif(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sec/android/mimage/photoretouching/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->clearExif()V

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->setTags(Ljava/util/Collection;)V

    return-void
.end method

.method public setTag(Lcom/sec/android/mimage/photoretouching/exif/ExifTag;)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->mData:Lcom/sec/android/mimage/photoretouching/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/exif/ExifData;->addTag(Lcom/sec/android/mimage/photoretouching/exif/ExifTag;)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    move-result-object v0

    return-object v0
.end method

.method public setTagDefinition(SISS[I)I
    .locals 13

    invoke-static/range {p3 .. p3}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->isValidType(S)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {p2}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->isValidIfd(I)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {p2, p1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->defineTag(IS)I

    move-result v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_0

    const/4 v8, -0x1

    :goto_0
    return v8

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v6

    const/4 v3, 0x0

    move-object/from16 v0, p5

    array-length v11, v0

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_3

    aget v4, p5, v10

    if-ne p2, v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->isValidIfd(I)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v8, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    const/4 v8, -0x1

    goto :goto_0

    :cond_4
    invoke-static/range {p5 .. p5}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v5

    if-eqz v7, :cond_6

    array-length v11, v7

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v11, :cond_6

    aget v2, v7, v10

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    invoke-static {v9}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v1

    and-int v12, v5, v1

    if-eqz v12, :cond_5

    const/4 v8, -0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v10

    shl-int/lit8 v11, v5, 0x18

    shl-int/lit8 v12, p3, 0x10

    or-int/2addr v11, v12

    or-int v11, v11, p4

    invoke-virtual {v10, v8, v11}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_7
    const/4 v8, -0x1

    goto :goto_0
.end method

.method public setTagValue(IILjava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getTag(II)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p3}, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public setTagValue(ILjava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->setTagValue(IILjava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sec/android/mimage/photoretouching/exif/ExifTag;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->setTag(Lcom/sec/android/mimage/photoretouching/exif/ExifTag;)Lcom/sec/android/mimage/photoretouching/exif/ExifTag;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public writeExif(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Argument is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, v2, p2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-void

    :catch_0
    move-exception v0

    :goto_0
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public writeExif([BLjava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public writeExif([BLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Argument is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/exif/GalleryExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method
