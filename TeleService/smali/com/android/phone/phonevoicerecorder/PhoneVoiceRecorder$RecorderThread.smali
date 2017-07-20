.class Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;
.super Ljava/lang/Thread;
.source "PhoneVoiceRecorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;
    }
.end annotation


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mHiddenFilePath:Ljava/lang/String;

.field private mLastSavedFileUri:Landroid/net/Uri;

.field private mSaveFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;


# direct methods
.method private constructor <init>(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mLastSavedFileUri:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;-><init>(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)V

    return-void
.end method

.method private canSaveFile(Ljava/io/File;Ljava/io/File;J)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-wide/16 v2, 0x3e8

    cmp-long v1, p3, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const-string/jumbo v2, "RecorderThread : fileDuration > 1000, failed to save record"

    invoke-virtual {v1, v2, v4}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    return v5

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const-string/jumbo v2, "RecorderThread : Hidden file doesn\'t exist"

    invoke-virtual {v1, v2, v4}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    return v5

    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const-string/jumbo v2, "RecorderThread : Save file exist"

    invoke-virtual {v1, v2, v4}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    return v5

    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const-string/jumbo v2, "RecorderThread : resMove failed"

    invoke-virtual {v1, v2, v4}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    return v5

    :cond_3
    return v4
.end method

.method private getCallerOriginalNumber()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get2(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get2(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->isDefinedNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string/jumbo v2, "01000000000"

    return-object v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get0(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RecorderThread : getCallerOriginalNumber has Exception - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getFileDuration(Landroid/media/MediaMetadataRetriever;)J
    .locals 4

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    return-wide v2
.end method

.method private isDefinedNumber(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-wrap0(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-wrap0(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "unknown"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-wrap0(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-wrap0(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "private_num"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-wrap0(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d02bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private scanMediaFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v1, v3, [Ljava/lang/String;

    aput-object p1, v1, v2

    new-array v0, v3, [Ljava/lang/String;

    aput-object p2, v0, v2

    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get3(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method private setMediaStoreData(JLjava/io/File;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "title"

    iget-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "mime_type"

    const-string/jumbo v3, "audio/3gpp"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "_data"

    iget-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "duration"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "_size"

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "date_modified"

    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "datetaken"

    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "recordingtype"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "track"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "is_ringtone"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "is_alarm"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "is_notification"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "is_podcast"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "is_drm"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "album"

    const-string/jumbo v3, "Sounds"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "is_sound"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->getCallerOriginalNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "recorded_number"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-wrap0(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mLastSavedFileUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mLastSavedFileUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const-string/jumbo v3, "RecorderThread : Content Resolver insert failed"

    invoke-virtual {v2, v3, v9}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-wrap0(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_data LIKE \"%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    const-string/jumbo v3, "audio/3gpp"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->scanMediaFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private setOutputFormat(Landroid/media/MediaRecorder;)V
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    invoke-virtual {p1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-wrap1(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    const v0, 0x2ca2068

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    const v0, 0x1f400

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    invoke-virtual {p1, v2}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    const v0, 0xac44

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->semSetDurationInterval(I)V

    const-wide/16 v0, 0x300

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaRecorder;->semSetFileSizeInterval(J)V

    invoke-virtual {p1, v2}, Landroid/media/MediaRecorder;->semSetAuthor(I)V

    return-void
.end method

.method private stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->isDefinedNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelRecording()V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v1, v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-wrap2(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-set3(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;Z)Z

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->releaseMediaRecorder()V

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v1, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const-string/jumbo v2, "RecorderThread : cancelRecording"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v1, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".m4a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread$FileEndWithFilter;-><init>(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v5, v2

    if-nez v5, :cond_2

    :cond_1
    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method public createNewFileName()Ljava/lang/String;
    .locals 9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v5}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-wrap0(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d05fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PhoneVoiceRecorder : mCallerName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v7}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get1(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v5}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get1(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v5}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get1(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x3e

    if-ge v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v5}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get1(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "[\\\\/:*?\"<>|]"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "^\\."

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const-string/jumbo v6, "createNewFileName() : mCallerName is exist"

    invoke-virtual {v5, v6}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyMMdd_HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v6}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-wrap0(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    return-object v5

    :cond_1
    iget-object v5, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v5}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get2(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v5}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get2(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const-string/jumbo v6, "createNewFileName() : mCallerNumber is exist"

    invoke-virtual {v5, v6}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    iget-object v6, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v6}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get0(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-set0(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v5}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get2(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v5}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get2(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const-string/jumbo v6, "createNewFileName() : getCallerNumber is exist"

    invoke-virtual {v5, v6}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v5}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-wrap0(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v7}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-wrap0(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "unknown"

    invoke-virtual {v6, v7, v8}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v5}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-wrap0(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v7}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-wrap0(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "unknown"

    invoke-virtual {v6, v7, v8}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError arg1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " arg2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 4

    const/4 v3, 0x1

    sparse-switch p2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Max duration reached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->stopRecording()Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Max filesize reached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->stopRecording()Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0, p3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-set4(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;I)I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x320 -> :sswitch_0
        0x321 -> :sswitch_1
        0x385 -> :sswitch_2
    .end sparse-switch
.end method

.method public pauseRecording()Z
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get7(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v2, v4}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-set1(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;Z)Z

    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const-string/jumbo v3, "RecorderThread : pauseRecording"

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    return v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    return v3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    return v3
.end method

.method public prepareRecording()Z
    .locals 10

    const-wide/16 v8, 0x64

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->releaseMediaRecorder()V

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".voicecall"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get7(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    invoke-static {v3, v4}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-set5(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get7(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->setOutputFormat(Landroid/media/MediaRecorder;)V

    iget-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get7(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V

    iget-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get7(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get7(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const-string/jumbo v4, "RecorderThread : prepareRecording done"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    return v6

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RecorderThread : Error occured while MediaRecorder Prepare()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    return v7

    :catch_1
    move-exception v2

    iget-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RecorderThread : Illegal State Exception Occured"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    return v7
.end method

.method public releaseMediaRecorder()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const-string/jumbo v1, "RecorderThread : releaseMediaRecorder..."

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get7(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get7(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get7(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get7(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get7(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0, v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-set5(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    :cond_0
    return-void
.end method

.method public resumeRecording()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get7(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->resume()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v2, v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-set1(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;Z)Z

    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const-string/jumbo v3, "RecorderThread : resumeRecording"

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    return v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    return v3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    return v3
.end method

.method public run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const-string/jumbo v1, "RecorderThread : run"

    invoke-virtual {v0, v1, v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->prepareRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->startRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->sendStartRecordSucceed()V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0, v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-set2(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;Z)Z

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get4(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const-string/jumbo v1, "RecorderThread : startRecording failed"

    invoke-virtual {v0, v1, v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->sendStartRecordFailed()V

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0, v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-set3(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;Z)Z

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0, v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-set1(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const-string/jumbo v1, "RecorderThread : prepareRecording failed"

    invoke-virtual {v0, v1, v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->sendStartRecordFailed()V

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0, v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-set3(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;Z)Z

    iget-object v0, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v0, v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-set1(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;Z)Z

    goto :goto_0
.end method

.method public startRecording()Z
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-set3(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;Z)Z

    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v2}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get7(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-set6(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;J)J

    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->createNewFileName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".m4a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    iget-object v3, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-wrap2(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recorderThread : mSaveFilePath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const-string/jumbo v3, "RecorderThread : startRecording"

    invoke-virtual {v2, v3, v6}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    return v6

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    return v4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    return v4
.end method

.method public stopRecording()Z
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    iget-object v8, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "RecorderThread : mRecordedDurationMSec: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v10}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get6(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v11}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v8}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get6(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)I

    move-result v8

    const/16 v9, 0x3e8

    if-ge v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const-string/jumbo v9, "RecorderThread : mRecordedDurationMSec < 1000ms, failed to save record"

    invoke-virtual {v8, v9, v11}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    return v12

    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-set3(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;Z)Z

    iget-object v8, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    invoke-static {v8}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->-get7(Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;)Landroid/media/MediaRecorder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/MediaRecorder;->stop()V

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->releaseMediaRecorder()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v8, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const-string/jumbo v9, "RecorderThread : stopRecording"

    invoke-virtual {v8, v9, v11}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    const/4 v6, 0x0

    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iget-object v8, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->getFileDuration(Landroid/media/MediaMetadataRetriever;)J

    move-result-wide v2

    :try_start_1
    new-instance v4, Ljava/io/File;

    iget-object v8, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-direct {p0, v4, v7, v2, v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->canSaveFile(Ljava/io/File;Ljava/io/File;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    return v12

    :catch_0
    move-exception v0

    iget-object v8, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "RecorderThread : mRecorder.stop() - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v11}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    return v12

    :cond_1
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    iget-object v8, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const-string/jumbo v9, "RecorderThread : Recording file created"

    invoke-virtual {v8, v9, v11}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    :try_start_4
    invoke-direct {p0, v2, v3, v7}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->setMediaStoreData(JLjava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    iget-object v8, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    iget-object v9, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9, v2, v3}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->sendStopRecordSucceed(Ljava/lang/String;J)V

    iget-object v8, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    const-string/jumbo v9, "RecorderThread : Recording saved"

    invoke-virtual {v8, v9}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;)V

    return v11

    :catch_1
    move-exception v0

    :goto_0
    :try_start_5
    iget-object v8, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "RecorderThread : error occurred while moving temp file"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    return v12

    :catchall_0
    move-exception v8

    :goto_1
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v8

    :catch_2
    move-exception v0

    iget-object v8, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->this$0:Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "RecorderThread : error occurred while input data to MediaStore"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v11}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->cancelRecording()V

    iget-object v8, p0, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_2
    return v12

    :catchall_1
    move-exception v8

    move-object v1, v4

    goto :goto_1

    :catchall_2
    move-exception v8

    move-object v6, v7

    move-object v1, v4

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v1, v4

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v6, v7

    move-object v1, v4

    goto :goto_0
.end method
