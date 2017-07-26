.class public Lcom/android/phone/callsettings/RingtoneKeytoneSettings;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "RingtoneKeytoneSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/RingtoneKeytoneSettings$1;
    }
.end annotation


# static fields
.field private static mSimSlot:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mHotSwapFilter:Landroid/content/IntentFilter;

.field private mHotSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mIsHotSwapRegister:Z

.field private mMaterialPlayDtmfTone:Landroid/preference/SwitchPreference;

.field private mMaterialVibrateWhenRinging:Landroid/preference/SwitchPreference;

.field private mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtoneDuosPreference:Landroid/preference/Preference;

.field private final mRingtoneLookupComplete:Landroid/os/Handler;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mRingtonePreferenceSim2:Landroid/preference/Preference;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

.field private mVibrationPreference:Landroid/preference/Preference;

.field private offset:Ljava/lang/String;

.field prefSet:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mMaterialVibrateWhenRinging:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;ILandroid/preference/Preference;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mSimSlot:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mIsHotSwapRegister:Z

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$1;-><init>(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneLookupComplete:Landroid/os/Handler;

    return-void
.end method

.method private canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v4, "DCM"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p2, :cond_2

    const-string/jumbo v4, "RingtonesKeytonesSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "inside canSetRingtone ringtone uri is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "RingtonesKeytonesSettings"

    const-string/jumbo v5, "Inside cansetringtone ringtone uri not null"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "content://media/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "RingtonesKeytonesSettings"

    const-string/jumbo v5, "ringtoneUri.toString().contains(content:media)"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v4}, Landroid/drm/DrmManagerClient;->canHandle(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "RingtonesKeytonesSettings"

    const-string/jumbo v5, "drmClient.canHandle(ringtoneUri, null)"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    invoke-virtual {v0, p2, v4}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v4, "RingtonesKeytonesSettings"

    const-string/jumbo v5, "PR DRM File Ringtone Rights Invalid !!!"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    const-string/jumbo v4, "RingtonesKeytonesSettings"

    const-string/jumbo v5, "RingtoneManager.getRingtone(context, ringtoneUri)"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    const-string/jumbo v4, "RingtonesKeytonesSettings"

    const-string/jumbo v5, "returning false because rtTemp is null"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "RingtonesKeytonesSettings"

    const-string/jumbo v5, "getRingtone() null"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception v1

    const-string/jumbo v4, "RingtonesKeytonesSettings"

    const-string/jumbo v5, "canSetRingtone() exception !!"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v4, 0x1

    return v4

    :cond_2
    const-string/jumbo v4, "RingtonesKeytonesSettings"

    const-string/jumbo v5, "inside canSetRingtone ringtone uri is null"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private goVibrationPattern()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.personalvibration.SelectPatternDialog"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ActivityNotFoundException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "RingtonesKeytonesSettings"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private lookupRingtoneName()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 13

    const/4 v12, 0x0

    const-string/jumbo v9, "RingtonesKeytonesSettings"

    const-string/jumbo v10, "UpdateMediaDB"

    invoke-static {v9, v10}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x2e

    invoke-virtual {v3, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v9, "RingtonesKeytonesSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMediaDB - extension("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "), mimeType("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_2

    const-string/jumbo v9, "3ga"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v9, "RingtonesKeytonesSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMediaDB - no mimeType, but it\'s audio file extension - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v9, "_data"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "title"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "mime_type"

    const-string/jumbo v10, "audio/*"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "_size"

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "_data=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    const-string/jumbo v9, "RingtonesKeytonesSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateMediaDB - tempUri("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "), newUri("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_2
    if-eqz v4, :cond_1

    :try_start_1
    const-string/jumbo v9, "audio"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string/jumbo v9, "RingtonesKeytonesSettings"

    const-string/jumbo v10, "updateMediaDB - mimeType is not audio - return null"

    invoke-static {v9, v10}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v12

    :catch_0
    move-exception v1

    const-string/jumbo v9, "RingtonesKeytonesSettings"

    const-string/jumbo v10, "updateMediaDB - exception is Occured - return null"

    invoke-static {v9, v10, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v12
.end method

.method private updateRingtoneData(I)V
    .locals 2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-direct {p0, v1, v0, v1}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    :cond_0
    return-void
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 10

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    const v0, 0x10403e3

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v1, :cond_2

    const v0, 0x10403e1

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneLookupComplete:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneLookupComplete:Landroid/os/Handler;

    invoke-virtual {v2, p3, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "title"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    :cond_4
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_5
    :try_start_1
    const-string/jumbo v0, "settings"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getRingtoneTitleForCached(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_display_name"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_2
    const-string/jumbo v0, "RingtonesKeytonesSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalArgumentException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_1
    move-exception v8

    :try_start_3
    const-string/jumbo v0, "RingtonesKeytonesSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SQLiteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method


# virtual methods
.method public handleRingtonePicked(Landroid/net/Uri;I)V
    .locals 10

    const v9, 0x7f0d09fa

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const-string/jumbo v5, "RingtonesKeytonesSettings"

    const-string/jumbo v6, "handleRingtonePicked() : Not changed"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const-string/jumbo v5, "RingtonesKeytonesSettings"

    const-string/jumbo v6, "updateRingtoneData(ringtoneType)"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->updateRingtoneData(I)V

    return-void

    :cond_2
    const-string/jumbo v5, "DCM"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->canSetRingtone(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "RingtonesKeytonesSettings"

    const-string/jumbo v6, "Inside cansetringtone false"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    const-string/jumbo v5, "RingtonesKeytonesSettings"

    const-string/jumbo v6, "handleRingtonePicked updating media DB"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->updateMediaDB(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_4

    const-string/jumbo v5, "RingtonesKeytonesSettings"

    const-string/jumbo v6, "handleRingtonePicked - pickedUri is null"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "is_ringtone"

    const-string/jumbo v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, p1, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string/jumbo v5, "RingtonesKeytonesSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleRingtonePicked - pickedUri("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "), ringtoneType("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, p2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v5, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->offset:Ljava/lang/String;

    if-eqz v5, :cond_1

    const/16 v5, 0x80

    if-ne p2, v5, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "recommendation_time_2"

    iget-object v7, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->offset:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "RingtonesKeytonesSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleRingtonePicked(Exception): pickedUri is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :catch_2
    move-exception v3

    const-string/jumbo v5, "RingtonesKeytonesSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleRingtonePicked(UnsupportedOperationException): pickedUri is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :catch_3
    move-exception v1

    const-string/jumbo v5, "RingtonesKeytonesSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleRingtonePicked(IllegalArgumentException): pickedUri is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "recommendation_time"

    iget-object v7, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->offset:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-eq p2, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DefaultRingtonePreference;->setPickedUri(Landroid/net/Uri;)V

    const-string/jumbo v1, "highlight_offset"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->offset:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    :pswitch_1
    if-eq p2, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "highlight_offset"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->offset:Ljava/lang/String;

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0d024e

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0d0293

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v5, "is_ringtone_duos"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "duos"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;)V

    const v2, 0x7f070052

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "callsettings_device_ringtone"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    check-cast v2, Lcom/android/phone/DefaultRingtonePreference;

    invoke-virtual {v2, p0, v4}, Lcom/android/phone/DefaultRingtonePreference;->setObject(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v5, "CallSettingTab"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "SIM1"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;)V

    sput v4, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mSimSlot:I

    const-string/jumbo v2, "callsettings_device_ringtone_sim2"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v7, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    check-cast v2, Lcom/android/phone/DefaultRingtonePreference;

    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Lcom/android/phone/DefaultRingtonePreference;->setRingtoneType(I)V

    :cond_2
    :goto_1
    new-instance v2, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$2;-><init>(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_3
    const-string/jumbo v2, "hot_swap_type_sim"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "RingtonesKeytonesSettings"

    const-string/jumbo v4, "registerReceiver mHotSwapReceiver "

    invoke-static {v2, v4, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mHotSwapFilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mHotSwapFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mHotSwapFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$3;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$3;-><init>(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mHotSwapFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mIsHotSwapRegister:Z

    :cond_4
    return-void

    :cond_5
    const-string/jumbo v2, "SIM2"

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;)V

    sput v3, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mSimSlot:I

    const-string/jumbo v2, "callsettings_device_ringtone_sim2"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    check-cast v2, Lcom/android/phone/DefaultRingtonePreference;

    invoke-virtual {v2, p0, v3}, Lcom/android/phone/DefaultRingtonePreference;->setObject(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;I)V

    :cond_6
    const-string/jumbo v2, "callsettings_device_ringtone"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v7, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    goto/16 :goto_0

    :cond_7
    const v2, 0x7f070051

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "material_callsettings_keytones"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mMaterialPlayDtmfTone:Landroid/preference/SwitchPreference;

    const-string/jumbo v2, "material_callsettings_vibrate_when_ringing"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mMaterialVibrateWhenRinging:Landroid/preference/SwitchPreference;

    const-string/jumbo v2, "callsettings_keytones"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v2, "callsettings_vibrate_when_ringing"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mMaterialPlayDtmfTone:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mMaterialPlayDtmfTone:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mMaterialPlayDtmfTone:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "dtmf_tone"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_c

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_8
    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mMaterialVibrateWhenRinging:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_9

    const-string/jumbo v2, "vibrator"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mMaterialVibrateWhenRinging:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_9
    :goto_3
    const-string/jumbo v2, "callsettings_device_vibration"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrationPreference:Landroid/preference/Preference;

    const-string/jumbo v2, "callsettings_device_ringtone"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    check-cast v2, Lcom/android/phone/DefaultRingtonePreference;

    invoke-virtual {v2, p0, v4}, Lcom/android/phone/DefaultRingtonePreference;->setObject(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;I)V

    :cond_a
    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    const-string/jumbo v4, "callsettings_device_duos_ringtone"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    const-string/jumbo v4, "callsettings_device_duos_ringtone"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->onCreateMultiSIM()V

    goto/16 :goto_1

    :cond_c
    move v2, v4

    goto :goto_2

    :cond_d
    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mMaterialVibrateWhenRinging:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v7, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mMaterialVibrateWhenRinging:Landroid/preference/SwitchPreference;

    goto :goto_3
.end method

.method public onCreateMultiSIM()V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v1

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v2

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v3

    if-le v3, v4, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v3

    if-le v3, v4, :cond_4

    if-eqz v0, :cond_4

    const-string/jumbo v3, "Dual SIM"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v5, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    :cond_1
    const-string/jumbo v3, "callsettings_device_ringtone_sim2"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v5, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    check-cast v3, Lcom/android/phone/DefaultRingtonePreference;

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Lcom/android/phone/DefaultRingtonePreference;->setRingtoneType(I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v3

    if-ne v3, v4, :cond_5

    if-eqz v1, :cond_7

    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v3

    if-ne v3, v4, :cond_6

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v3

    if-le v3, v4, :cond_a

    if-eqz v2, :cond_a

    :cond_7
    const-string/jumbo v3, "SIM1 off SIM2 on or SIM2 only"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;)V

    const-string/jumbo v3, "callsettings_device_ringtone_sim2"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    check-cast v3, Lcom/android/phone/DefaultRingtonePreference;

    invoke-virtual {v3, p0, v4}, Lcom/android/phone/DefaultRingtonePreference;->setObject(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;I)V

    :cond_8
    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v5, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    :cond_9
    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v5, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    goto :goto_0

    :cond_a
    const-string/jumbo v3, "SIM1 only"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;)V

    const-string/jumbo v3, "callsettings_device_ringtone_sim2"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v5, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    :cond_b
    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v5, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v3, "else"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;)V

    const-string/jumbo v3, "callsettings_device_ringtone_sim2"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v5, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    :cond_d
    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v5, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mIsHotSwapRegister:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mIsHotSwapRegister:Z

    :cond_0
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v2, "RingtonesKeytonesSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IllegalArgumentException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onMusicPickerChosen(I)V
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "audio/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "enable_ringtone_recommender"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "DocumentsUIPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-ne p1, v3, :cond_0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ActivityNotFoundException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :try_start_1
    invoke-virtual {p0, v1, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ActivityNotFoundException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "RingtoneAndKeypadtones"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    const v5, 0x7f0d0268

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-ne p1, v4, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vibrate_when_ringing"

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mMaterialVibrateWhenRinging:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v4, 0x7f0d02e2

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "vibrate_when_ringing"

    if-eqz v1, :cond_4

    move v4, v3

    :goto_1
    int-to-long v8, v4

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vibrate_when_ringing"

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    move v4, v2

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mMaterialPlayDtmfTone:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v4, 0x7f0d02e3

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "dtmf_tone"

    if-eqz v0, :cond_7

    move v4, v3

    :goto_2
    int-to-long v8, v4

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "dtmf_tone"

    if-eqz v0, :cond_6

    move v2, v3

    :cond_6
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_7
    move v4, v2

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const v4, 0x7f0d0268

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "dtmf_tone"

    iget-object v5, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "callsettings_device_vibration"

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d02e1

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->goVibrationPattern()V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneDuosPreference:Landroid/preference/Preference;

    if-ne p2, v3, :cond_4

    const-string/jumbo v3, "mRingtoneDuosPreference"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/phone/callsettings/CallSettingsTabFragment;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "TabTitleString"

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string/jumbo v3, "CallSettingMenu"

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return v2

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-ne p2, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d02e0

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    return v2
.end method

.method public onResume()V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const v3, 0x7f0d0268

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->lookupRingtoneName()V

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v3

    if-le v3, v4, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v1

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v2

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceSim2:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mMaterialPlayDtmfTone:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mMaterialPlayDtmfTone:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v7, "dtmf_tone"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mMaterialVibrateWhenRinging:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mMaterialVibrateWhenRinging:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/CallFeaturesSetting;->getVibrateWhenRinging(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v6, "is_ringtone_duos"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_5

    const-string/jumbo v3, "updateDeviceVibrationName()"

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->updateDeviceVibrationName()V

    :cond_5
    new-instance v3, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$4;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$4;-><init>(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget v3, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabCount:I

    if-lez v3, :cond_6

    sget v3, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    if-nez v3, :cond_c

    sput v5, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mSimSlot:I

    :cond_6
    :goto_2
    const-string/jumbo v3, "support_bixby"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Lcom/android/phone/ia/RingtoneKeytoneSettingsStateListener;

    invoke-direct {v3, p0}, Lcom/android/phone/ia/RingtoneKeytoneSettingsStateListener;-><init>(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "RingtoneAndKeypadtones"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "RingtoneAndKeypadtones"

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_7
    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    :cond_8
    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v4, "RingtoneAndKeypadtones"

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_9
    return-void

    :cond_a
    move v3, v5

    goto/16 :goto_0

    :cond_b
    move v3, v5

    goto/16 :goto_1

    :cond_c
    sput v4, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mSimSlot:I

    goto :goto_2
.end method

.method public updateDeviceVibrationName()V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_vibration_pattern"

    const/4 v3, -0x2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrationPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrationPreference:Landroid/preference/Preference;

    const-string/jumbo v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrationPreference:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0
.end method
