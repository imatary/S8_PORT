.class public interface abstract Lcom/sec/android/app/camera/interfaces/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final AAS_ON:Ljava/lang/String; = "sys.aasservice.aason"

.field public static final ACTIVITY_CLASS_NAME_ANIMATEDGIF:Ljava/lang/String; = "com.sec.agif_maker.GifMakerActivity"

.field public static final ACTIVITY_CLASS_NAME_GALLERY3D:Ljava/lang/String; = "com.sec.android.gallery3d.app.GalleryActivity"

.field public static final ACTIVITY_CLASS_NAME_VIDEOPLAYER:Ljava/lang/String; = "com.samsung.android.video.player.activity.MoviePlayer"

.field public static final AP_THERMISTOR_PATH:Ljava/lang/String; = "/sys/class/sec/sec-ap-thermistor/temperature"

.field public static final BEST_PHOTO_URI:Landroid/net/Uri;

.field public static final CIF_ASPECT_RATIO:D = 1.2222222222222223

.field public static final FLASH_THERMISTOR_PATH:Ljava/lang/String; = "/sys/class/sec/sec-cf-thermistor/temperature"

.field public static final INTENT_ACTION_DISABLE_VIBRATOR:Ljava/lang/String; = "com.sec.android.app.camera.DISABLE_VIBRATOR"

.field public static final INTENT_ACTION_ENABLE_VIBRATOR:Ljava/lang/String; = "com.sec.android.app.camera.ENABLE_VIBRATOR"

.field public static final INTENT_ACTION_STOP_VOICE_NOTE:Ljava/lang/String; = "com.sec.android.app.voicenote.rec_save"

.field public static final INTENT_ACTION_STOP_VOICE_NOTE_PERMISSION:Ljava/lang/String; = "com.sec.android.app.voicenote.Controller"

.field public static final INTENT_ACTION_STOP_VOICE_RECORDER:Ljava/lang/String; = "com.sec.android.app.voicerecorder.rec_save"

.field public static final INTENT_VISION_INTELLIGENCE:Ljava/lang/String; = "samsung.intentfilter.visionintelligence.camera"

.field public static final KEY_QUICK_VIEW:Ljava/lang/String; = "quickview"

.field public static final KEY_REVIEW_ON:Ljava/lang/String; = "reviewon"

.field public static final MSCS_ON:Ljava/lang/String; = "sys.mdniecontrolservice.mscon"

.field public static final MULTIWINDOW_FREEFORM_DENSITY_RATIO:F = 0.75f

.field public static final NORMAL_ASPECT_RATIO:D = 1.3333333333333333

.field public static final PACKAGE_NAME_ANIMATEDGIF:Ljava/lang/String; = "com.sec.agif_maker"

.field public static final PACKAGE_NAME_CMH:Ljava/lang/String; = "com.samsung.cmh"

.field public static final PACKAGE_NAME_DOCOMO_LAUNCHER:Ljava/lang/String; = "com.nttdocomo.android.dhome"

.field public static final PACKAGE_NAME_GALLERY3D:Ljava/lang/String; = "com.sec.android.gallery3d"

.field public static final PACKAGE_NAME_QR_AGENT:Ljava/lang/String; = "com.samsung.android.app.qragent"

.field public static final PACKAGE_NAME_SAMSUNG_APPS:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field public static final PACKAGE_NAME_VIDEOPLAYER:Ljava/lang/String; = "com.samsung.android.video"

.field public static final PACKAGE_NAME_VISION_INTELLIGENCE:Ljava/lang/String; = "com.samsung.android.visionintelligence"

.field public static final SEM_MDNIE_SERVICE:Ljava/lang/String; = "mDNIe"

.field public static final SERVICE_NAME_QR_AGENT:Ljava/lang/String; = "com.samsung.android.app.qragent.service.QRService"

.field public static final SQUARE_ASPECT_RATIO:D = 1.0

.field public static final SUPER_WIDE_ASPECT_RATIO:D = 2.0555555555555554

.field public static final WIDE_ASPECT_RATIO:D = 1.7777777777777777


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.samsung.cmh"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "bestphoto"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/interfaces/Constants;->BEST_PHOTO_URI:Landroid/net/Uri;

    return-void
.end method
