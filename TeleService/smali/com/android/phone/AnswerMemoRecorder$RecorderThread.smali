.class Lcom/android/phone/AnswerMemoRecorder$RecorderThread;
.super Ljava/lang/Thread;
.source "AnswerMemoRecorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/AnswerMemoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/AnswerMemoRecorder$RecorderThread$FileEndWithFilter;
    }
.end annotation


# instance fields
.field private mAnswerMemoSaveUri:Landroid/net/Uri;

.field private mFileName:Ljava/lang/String;

.field private mHiddenFilePath:Ljava/lang/String;

.field private mSaveFilePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/AnswerMemoRecorder;


# direct methods
.method private constructor <init>(Lcom/android/phone/AnswerMemoRecorder;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mAnswerMemoSaveUri:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/AnswerMemoRecorder;Lcom/android/phone/AnswerMemoRecorder$RecorderThread;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;-><init>(Lcom/android/phone/AnswerMemoRecorder;)V

    return-void
.end method

.method private isPhoneNumberChar(C)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x30

    if-lt p1, v1, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v4}, Lcom/android/phone/AnswerMemoRecorder;->-get0(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "unknown"

    invoke-virtual {v5, v6, v7}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v4}, Lcom/android/phone/AnswerMemoRecorder;->-get0(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "private_num"

    invoke-virtual {v5, v6, v7}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v4}, Lcom/android/phone/AnswerMemoRecorder;->-get0(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d02bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->isPhoneNumberChar(C)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public cancelRecording()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->releaseMediaRecorder()V

    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/phone/AnswerMemoRecorder;->-set2(Lcom/android/phone/AnswerMemoRecorder;Z)Z

    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v1}, Lcom/android/phone/AnswerMemoRecorder;->-get0(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    iget-object v1, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string/jumbo v2, "RecorderThread : cancelRecording"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    return-void
.end method

.method public checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v1, Lcom/android/phone/AnswerMemoRecorder$RecorderThread$FileEndWithFilter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".m4a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread$FileEndWithFilter;-><init>(Lcom/android/phone/AnswerMemoRecorder$RecorderThread;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/android/phone/AnswerMemoRecorder;->ANSWER_MEMO_PHONE_PATH:Ljava/lang/String;

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
    .locals 8

    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string/jumbo v5, "createNewFileName()"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v4}, Lcom/android/phone/AnswerMemoRecorder;->-get0(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d09cb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v4}, Lcom/android/phone/AnswerMemoRecorder;->-get2(Lcom/android/phone/AnswerMemoRecorder;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v4}, Lcom/android/phone/AnswerMemoRecorder;->-get2(Lcom/android/phone/AnswerMemoRecorder;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createNewFileName() mCallerNumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v6}, Lcom/android/phone/AnswerMemoRecorder;->-get2(Lcom/android/phone/AnswerMemoRecorder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/AnswerMemoRecorder;->-wrap3(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyMMdd_HHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    return-object v4

    :cond_1
    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v4}, Lcom/android/phone/AnswerMemoRecorder;->-get1(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v4}, Lcom/android/phone/AnswerMemoRecorder;->-get1(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/internal/telephony/CallManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->stripNonPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createNewFileName() getCallerNumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v6}, Lcom/android/phone/AnswerMemoRecorder;->-get1(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->getCallerNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/AnswerMemoRecorder;->-wrap3(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v4}, Lcom/android/phone/AnswerMemoRecorder;->-get0(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "unknown"

    invoke-virtual {v5, v6, v7}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

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

    invoke-static {v0, v1, v2}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 4

    const/4 v3, 0x1

    sparse-switch p2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Max duration reached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->stopRecording()Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Max filesize reached : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->stopRecording()Z

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v0, p3}, Lcom/android/phone/AnswerMemoRecorder;->-set3(Lcom/android/phone/AnswerMemoRecorder;I)I

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
    iget-object v2, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v2}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v2, v4}, Lcom/android/phone/AnswerMemoRecorder;->-set0(Lcom/android/phone/AnswerMemoRecorder;Z)Z

    iget-object v2, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string/jumbo v3, "RecorderThread : pauseRecording"

    invoke-static {v2, v3, v4}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    return v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    return v3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    return v3
.end method

.method public prepareRecording()Z
    .locals 12

    const-wide/16 v10, 0x64

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->releaseMediaRecorder()V

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/android/phone/AnswerMemoRecorder;->ANSWER_MEMO_PHONE_PATH:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v0

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RecorderThread : answerMemoDir dirCreated = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/phone/AnswerMemoRecorder;->ANSWER_MEMO_PHONE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".answermemo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v6, Landroid/media/MediaRecorder;

    invoke-direct {v6}, Landroid/media/MediaRecorder;-><init>()V

    invoke-static {v5, v6}, Lcom/android/phone/AnswerMemoRecorder;->-set4(Lcom/android/phone/AnswerMemoRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v6}, Lcom/android/phone/AnswerMemoRecorder;->-wrap1(Lcom/android/phone/AnswerMemoRecorder;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v5

    const v6, 0x2ca2068

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v5

    const v6, 0x1f400

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v5

    const v6, 0xac44

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v5

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->semSetDurationInterval(I)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v5

    const-wide/16 v6, 0x300

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaRecorder;->semSetFileSizeInterval(J)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->semSetAuthor(I)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->prepare()V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v5}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string/jumbo v6, "RecorderThread : prepareRecording"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    return v8

    :catch_0
    move-exception v2

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RecorderThread : Illegal Argument Exception Exception Occured"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    return v9

    :catch_1
    move-exception v3

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RecorderThread : Illegal State Exception Occured"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    return v9

    :catch_2
    move-exception v1

    iget-object v5, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RecorderThread : IOException Occured"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    return v9
.end method

.method public releaseMediaRecorder()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string/jumbo v1, "RecorderThread : releaseMediaRecorder..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v0}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v0}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v0}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v0}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v0}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v0, v3}, Lcom/android/phone/AnswerMemoRecorder;->-set4(Lcom/android/phone/AnswerMemoRecorder;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;

    :cond_0
    return-void
.end method

.method public resumeRecording()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v2}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->resume()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v2, v3}, Lcom/android/phone/AnswerMemoRecorder;->-set0(Lcom/android/phone/AnswerMemoRecorder;Z)Z

    iget-object v2, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string/jumbo v3, "RecorderThread : resumeRecording"

    invoke-static {v2, v3, v4}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    return v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    return v3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    return v3
.end method

.method public run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string/jumbo v1, "RecorderThread : run"

    invoke-static {v0, v1, v3}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->prepareRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->startRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v0}, Lcom/android/phone/AnswerMemoRecorder;->-get3(Lcom/android/phone/AnswerMemoRecorder;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v0, v2}, Lcom/android/phone/AnswerMemoRecorder;->-set1(Lcom/android/phone/AnswerMemoRecorder;Z)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string/jumbo v1, "RecorderThread : startRecording failed"

    invoke-static {v0, v1, v3}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v0, v2}, Lcom/android/phone/AnswerMemoRecorder;->-set2(Lcom/android/phone/AnswerMemoRecorder;Z)Z

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v0, v2}, Lcom/android/phone/AnswerMemoRecorder;->-set0(Lcom/android/phone/AnswerMemoRecorder;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string/jumbo v1, "RecorderThread : prepareRecording failed"

    invoke-static {v0, v1, v3}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v0, v2}, Lcom/android/phone/AnswerMemoRecorder;->-set2(Lcom/android/phone/AnswerMemoRecorder;Z)Z

    iget-object v0, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v0, v2}, Lcom/android/phone/AnswerMemoRecorder;->-set0(Lcom/android/phone/AnswerMemoRecorder;Z)Z

    goto :goto_0
.end method

.method public startRecording()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v3}, Lcom/android/phone/AnswerMemoRecorder;->-get1(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/internal/telephony/CallManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    iget-object v3, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v3}, Lcom/android/phone/AnswerMemoRecorder;->-get0(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "isAutoAnsweringMode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RecorderThread : startRecording hasActiveCall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isAutoAnsweringMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    return v6

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/AnswerMemoRecorder;->-set2(Lcom/android/phone/AnswerMemoRecorder;Z)Z

    iget-object v3, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v3}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {v3}, Lcom/android/phone/AnswerMemoRecorder;->-get0(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    iget-object v3, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/phone/AnswerMemoRecorder;->-set5(Lcom/android/phone/AnswerMemoRecorder;J)J

    iget-object v3, p0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    const-string/jumbo v4, "RecorderThread : startRecording"

    invoke-static {v3, v4, v7}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    return v7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    return v6
.end method

.method public stopRecording()Z
    .locals 20

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/phone/AnswerMemoRecorder;->-get5(Lcom/android/phone/AnswerMemoRecorder;)Landroid/media/MediaRecorder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaRecorder;->stop()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/phone/AnswerMemoRecorder;->-set2(Lcom/android/phone/AnswerMemoRecorder;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/phone/AnswerMemoRecorder;->-get0(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->releaseMediaRecorder()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v16, v0

    const-string/jumbo v17, "RecorderThread : stopRecording"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->createNewFileName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/android/phone/AnswerMemoRecorder;->ANSWER_MEMO_PHONE_PATH:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ".m4a"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v13, 0x0

    new-instance v12, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v12}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x9

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    int-to-long v8, v0

    const-wide/16 v16, 0x3e8

    cmp-long v16, v8, v16

    if-gez v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v16, v0

    const-string/jumbo v17, "RecorderThread : fileDuration > 1000, failed to save record"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v16, 0x0

    invoke-virtual {v12}, Landroid/media/MediaMetadataRetriever;->release()V

    return v16

    :catch_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "RecorderThread : mRecorder.stop() - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    const/16 v16, 0x0

    return v16

    :catch_1
    move-exception v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "RecorderThread : mRecorder.stop() - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    const/16 v16, 0x0

    return v16

    :cond_1
    :try_start_2
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mHiddenFilePath:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v16, v0

    const-string/jumbo v17, "RecorderThread : Hidden file doesn\'t exist"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v16, 0x0

    invoke-virtual {v12}, Landroid/media/MediaMetadataRetriever;->release()V

    return v16

    :cond_2
    :try_start_5
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v16, v0

    const-string/jumbo v17, "RecorderThread : Save file doesn\'t exist"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/16 v16, 0x0

    invoke-virtual {v12}, Landroid/media/MediaMetadataRetriever;->release()V

    return v16

    :cond_3
    :try_start_6
    invoke-virtual {v10, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v16, v0

    const-string/jumbo v17, "RecorderThread : resMove failed"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/16 v16, 0x0

    invoke-virtual {v12}, Landroid/media/MediaMetadataRetriever;->release()V

    return v16

    :cond_4
    invoke-virtual {v12}, Landroid/media/MediaMetadataRetriever;->release()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v16, v0

    const-string/jumbo v17, "RecorderThread : Recording file created"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    :try_start_7
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v16, "memo_contact_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/phone/AnswerMemoRecorder;->-get2(Lcom/android/phone/AnswerMemoRecorder;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/phone/AnswerMemoRecorder;->-get2(Lcom/android/phone/AnswerMemoRecorder;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/phone/AnswerMemoRecorder;->-wrap0(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/phone/AnswerMemoRecorder;->-get2(Lcom/android/phone/AnswerMemoRecorder;)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/phone/AnswerMemoRecorder;->-get0(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v17

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const-string/jumbo v19, "unknown"

    invoke-virtual/range {v17 .. v19}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_5
    :goto_0
    const-string/jumbo v16, "memo_display_name"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v16, "memo_create_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v16, "memo_duration"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v16, "memo_heard"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v16, "memo_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v16, "memo_mime_type"

    const-string/jumbo v17, "audio/amr"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v16, "memo_size"

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v16, "memo_deleted"

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/phone/AnswerMemoRecorder;->-get0(Lcom/android/phone/AnswerMemoRecorder;)Lcom/android/phone/PhoneGlobals;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    sget-object v17, Lcom/android/phone/AnswerMemo$Memos;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mAnswerMemoSaveUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "RecorderThread : mAnswerMemoSaveUri "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mAnswerMemoSaveUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/phone/AnswerMemoRecorder;->-wrap3(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mAnswerMemoSaveUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    if-nez v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v16, v0

    const-string/jumbo v17, "RecorderThread : Content Resolver insert failed"

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    const/16 v16, 0x0

    return v16

    :catch_2
    move-exception v5

    :goto_1
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "RecorderThread : error occurred while moving temp file"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/16 v16, 0x0

    invoke-virtual {v12}, Landroid/media/MediaMetadataRetriever;->release()V

    return v16

    :catchall_0
    move-exception v16

    :goto_2
    invoke-virtual {v12}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v16

    :cond_7
    if-eqz v3, :cond_5

    :try_start_9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/phone/AnswerMemoRecorder;->-get2(Lcom/android/phone/AnswerMemoRecorder;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-result-object v3

    goto/16 :goto_0

    :catch_3
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "RecorderThread : error occurred while input data to provider "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Lcom/android/phone/AnswerMemoRecorder;->-wrap2(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->cancelRecording()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->mSaveFilePath:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    :cond_8
    const/16 v16, 0x0

    return v16

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/AnswerMemoRecorder$RecorderThread;->this$0:Lcom/android/phone/AnswerMemoRecorder;

    move-object/from16 v16, v0

    const-string/jumbo v17, "RecorderThread : Recording saved"

    invoke-static/range {v16 .. v17}, Lcom/android/phone/AnswerMemoRecorder;->-wrap3(Lcom/android/phone/AnswerMemoRecorder;Ljava/lang/String;)V

    const/16 v16, 0x1

    return v16

    :catchall_1
    move-exception v16

    move-object v7, v10

    goto :goto_2

    :catchall_2
    move-exception v16

    move-object v13, v14

    move-object v7, v10

    goto :goto_2

    :catch_4
    move-exception v5

    move-object v7, v10

    goto/16 :goto_1

    :catch_5
    move-exception v5

    move-object v13, v14

    move-object v7, v10

    goto/16 :goto_1
.end method
