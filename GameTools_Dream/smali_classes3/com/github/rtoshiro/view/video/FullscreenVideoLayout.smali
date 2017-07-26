.class public Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;
.super Lcom/github/rtoshiro/view/video/FullscreenVideoView;
.source "FullscreenVideoLayout.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final K:Ljava/lang/String; = "FullscreenVideoLayout"

.field protected static final h:Landroid/os/Handler;


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/widget/SeekBar;

.field protected c:Landroid/widget/ImageButton;

.field protected d:Landroid/widget/ImageButton;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/view/View$OnTouchListener;

.field protected i:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->h:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout$1;

    invoke-direct {v0, p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout$1;-><init>(Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;)V

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->i:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout$1;

    invoke-direct {v0, p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout$1;-><init>(Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;)V

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->i:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout$1;

    invoke-direct {v0, p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout$1;-><init>(Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;)V

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->i:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    const-string/jumbo v0, "FullscreenVideoLayout"

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->a()V

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 3

    invoke-super {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->b()V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->a:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->j:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/naver/glink/android/sdk/R$layout;->item_view_videocontrols:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->a:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->a:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->a:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->vcv_seekbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->b:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->a:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->vcv_img_fullscreen:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->d:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->a:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->vcv_img_play:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->c:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->a:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->vcv_txt_total:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->a:Landroid/view/View;

    sget v1, Lcom/naver/glink/android/sdk/R$id;->vcv_txt_elapsed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->f:Landroid/widget/TextView;

    :cond_1
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->c:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->b:Landroid/widget/SeekBar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_4
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->a:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method protected c()V
    .locals 1

    invoke-super {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->c()V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 4

    const-string/jumbo v0, "FullscreenVideoLayout"

    const-string/jumbo v1, "startCounter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected e()V
    .locals 2

    const-string/jumbo v0, "FullscreenVideoLayout"

    const-string/jumbo v1, "stopCounter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected f()V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->f:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->getDuration()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->b:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    rem-int/lit8 v1, v0, 0x3c

    int-to-long v2, v1

    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    int-to-long v4, v1

    div-int/lit16 v0, v0, 0xe10

    rem-int/lit8 v0, v0, 0x18

    int-to-long v0, v0

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->f:Landroid/widget/TextView;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "%d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v11

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v12

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->f:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "%02d:%02d"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v11

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected g()V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string/jumbo v0, "FullscreenVideoLayout"

    const-string/jumbo v1, "tryToPrepare"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->g()V

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->getCurrentState()Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    move-result-object v0

    sget-object v1, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->PREPARED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->getCurrentState()Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    move-result-object v0

    sget-object v1, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->STARTED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->getDuration()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->b:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->b:Landroid/widget/SeekBar;

    invoke-virtual {v1, v10}, Landroid/widget/SeekBar;->setProgress(I)V

    div-int/lit16 v0, v0, 0x3e8

    rem-int/lit8 v1, v0, 0x3c

    int-to-long v2, v1

    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    int-to-long v4, v1

    div-int/lit16 v0, v0, 0xe10

    rem-int/lit8 v0, v0, 0x18

    int-to-long v0, v0

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->f:Landroid/widget/TextView;

    const-string/jumbo v7, "00:00:00"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->e:Landroid/widget/TextView;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "%d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v11

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v12

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->a:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->f:Landroid/widget/TextView;

    const-string/jumbo v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->e:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "%02d:%02d"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v11

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public h()V
    .locals 2

    const-string/jumbo v0, "FullscreenVideoLayout"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->w()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->h()V

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->d()V

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->l()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    const-string/jumbo v0, "FullscreenVideoLayout"

    const-string/jumbo v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->e()V

    invoke-super {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->i()V

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->l()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 2

    const-string/jumbo v0, "FullscreenVideoLayout"

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->j()V

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->e()V

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->l()V

    return-void
.end method

.method public k()V
    .locals 2

    const-string/jumbo v0, "FullscreenVideoLayout"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->k()V

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->e()V

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->l()V

    return-void
.end method

.method protected l()V
    .locals 2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->c:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->getCurrentState()Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    move-result-object v0

    sget-object v1, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->STARTED:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->j:Landroid/content/Context;

    sget v1, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_icon_end_pause_normal:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->c:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->j:Landroid/content/Context;

    sget v1, Lcom/naver/glink/android/sdk/R$drawable;->gl_ls_icon_end_play_normal:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public m()V
    .locals 2

    const-string/jumbo v0, "FullscreenVideoLayout"

    const-string/jumbo v1, "hideControls"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    const-string/jumbo v0, "FullscreenVideoLayout"

    const-string/jumbo v1, "showControls"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/naver/glink/android/sdk/R$id;->vcv_img_play:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->i()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->h()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->r()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->setFullscreen(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string/jumbo v0, "FullscreenVideoLayout"

    const-string/jumbo v1, "onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->onCompletion(Landroid/media/MediaPlayer;)V

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->e()V

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->l()V

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->r:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    sget-object v1, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->ERROR:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->f()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->getCurrentState()Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    move-result-object v0

    sget-object v1, Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;->END:Lcom/github/rtoshiro/view/video/FullscreenVideoView$State;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "FullscreenVideoLayout"

    const-string/jumbo v1, "onDetachedFromWindow END"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->e()V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/github/rtoshiro/view/video/FullscreenVideoView;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->e()V

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->l()V

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    const-string/jumbo v0, "FullscreenVideoLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProgressChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->e()V

    const-string/jumbo v0, "FullscreenVideoLayout"

    const-string/jumbo v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->a(I)V

    const-string/jumbo v0, "FullscreenVideoLayout"

    const-string/jumbo v1, "onStopTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->m()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->g:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->g:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->n()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/github/rtoshiro/view/video/FullscreenVideoLayout;->g:Landroid/view/View$OnTouchListener;

    return-void
.end method
