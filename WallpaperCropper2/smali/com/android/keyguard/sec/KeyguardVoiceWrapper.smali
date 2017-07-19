.class public Lcom/android/keyguard/sec/KeyguardVoiceWrapper;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardVoiceWrapper$WakeUpCommandCallback;
    }
.end annotation


# static fields
.field private static final ACTION_CLEAR_COVER_OPEN:Ljava/lang/String; = "com.samsung.cover.OPEN"

.field private static final TAG:Ljava/lang/String; = "KeyguardVoiceWrapperDummy"


# instance fields
.field mContext:Landroid/content/Context;

.field private mUsingWakeUpCommand:Z

.field private mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$WakeUpCommandCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mUsingWakeUpCommand:Z

    new-instance v0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper$1;-><init>(Lcom/android/keyguard/sec/KeyguardVoiceWrapper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mWakeUpCallback:Lcom/android/keyguard/sec/KeyguardVoiceWrapper$WakeUpCommandCallback;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->intitializeAndStart()V

    return-void
.end method

.method private intitializeAndStart()V
    .locals 0

    return-void
.end method


# virtual methods
.method public checkWakeUpCommandCondition()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wake_up_lock_screen"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v4, :cond_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mUsingWakeUpCommand:Z

    return v0
.end method

.method public cleanUpVoiceThread()V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public pauseVoiceThread()V
    .locals 0

    return-void
.end method

.method public refreshDefaultHelpText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardVoiceWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->lockscreen_unlock_guide_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resumeVoiceThread()V
    .locals 0

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    return-void
.end method
