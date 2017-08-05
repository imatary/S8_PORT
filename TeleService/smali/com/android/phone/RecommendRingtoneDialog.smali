.class public Lcom/android/phone/RecommendRingtoneDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "RecommendRingtoneDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RecommendRingtoneDialog$1;,
        Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;
    }
.end annotation


# instance fields
.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPickedUri:Landroid/net/Uri;

.field private mRecommendAdapter:Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;

.field private mSelectedPosition:I

.field private mSimIndex:I

.field private offset:I

.field private ringtone:Landroid/media/Ringtone;


# direct methods
.method static synthetic -get0(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/RecommendRingtoneDialog;)Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mRecommendAdapter:Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/RecommendRingtoneDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSelectedPosition:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/phone/RecommendRingtoneDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSimIndex:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/phone/RecommendRingtoneDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->offset:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/phone/RecommendRingtoneDialog;)Landroid/media/Ringtone;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/RecommendRingtoneDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSelectedPosition:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/RecommendRingtoneDialog;Landroid/media/Ringtone;)Landroid/media/Ringtone;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/RecommendRingtoneDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/RecommendRingtoneDialog;->requestAudioFocus()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    iput v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSelectedPosition:I

    iput v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSimIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mPickedUri:Landroid/net/Uri;

    new-instance v0, Lcom/android/phone/RecommendRingtoneDialog$1;

    invoke-direct {v0, p0}, Lcom/android/phone/RecommendRingtoneDialog$1;-><init>(Lcom/android/phone/RecommendRingtoneDialog;)V

    iput-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method private requestAudioFocus()V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "RecommendRingtoneDialog"

    const-string/jumbo v1, "requestAudioFocus fail. it may be during call"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/16 v3, 0x80

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->stop()V

    :cond_0
    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget v2, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSelectedPosition:I

    if-ne v2, v4, :cond_1

    iget-object v5, p0, Lcom/android/phone/RecommendRingtoneDialog;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSimIndex:I

    if-ne v2, v4, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v5, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v5, "highlight_offset"

    iget v6, p0, Lcom/android/phone/RecommendRingtoneDialog;->offset:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSimIndex:I

    if-ne v2, v4, :cond_3

    :goto_2
    invoke-static {p0, v3, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    iget v2, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSimIndex:I

    if-ne v2, v4, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "recommendation_time_2"

    iget v4, p0, Lcom/android/phone/RecommendRingtoneDialog;->offset:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "recommendation_time"

    iget v4, p0, Lcom/android/phone/RecommendRingtoneDialog;->offset:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/phone/RecommendRingtoneDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "recommend_offset"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->offset:I

    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "simIndex"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "simIndex"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSimIndex:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "pickeduri"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "pickeduri"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "pickeduri"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mPickedUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mPickedUri:Landroid/net/Uri;

    const-string/jumbo v4, "highlight_offset"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mSelectedPosition:I

    :cond_1
    iput-object p0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d052a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/android/phone/RecommendRingtoneDialog$2;

    invoke-direct {v1, p0}, Lcom/android/phone/RecommendRingtoneDialog$2;-><init>(Lcom/android/phone/RecommendRingtoneDialog;)V

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v1, Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;

    invoke-direct {v1, p0}, Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;-><init>(Lcom/android/phone/RecommendRingtoneDialog;)V

    iput-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mRecommendAdapter:Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;

    iget-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mRecommendAdapter:Lcom/android/phone/RecommendRingtoneDialog$RecommendAdapter;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0}, Lcom/android/phone/RecommendRingtoneDialog;->setupAlert()V

    return-void

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/RecommendRingtoneDialog;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/phone/RecommendRingtoneDialog;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    return-void
.end method
