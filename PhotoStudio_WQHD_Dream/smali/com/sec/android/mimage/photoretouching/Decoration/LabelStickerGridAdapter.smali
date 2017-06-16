.class public Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "LabelStickerGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$ImageHolder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private FCL:Landroid/view/View$OnFocusChangeListener;

.field isAlreadyFocused:Z

.field private keylistener:Landroid/view/View$OnKeyListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentRes:[I

.field private mFragment:Landroid/app/Fragment;

.field private mGridView:Landroid/widget/GridView;

.field private mNumThumbCount:I

.field private mParent:Landroid/view/ViewGroup;

.field mPreviousView:Landroid/view/View;

.field private mType:I

.field private onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;Landroid/widget/GridView;ILcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mNumThumbCount:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mType:I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mParent:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mGridView:Landroid/widget/GridView;

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->isAlreadyFocused:Z

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mPreviousView:Landroid/view/View;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$1;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->FCL:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$3;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$3;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->keylistener:Landroid/view/View$OnKeyListener;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mGridView:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFocusable(Z)V

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mType:I

    const-string v0, "shruthi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " tyoe is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p3, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    array-length v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mNumThumbCount:I

    :cond_0
    return-void

    :pswitch_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mEmotionStickerRes:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mObjectStickerRes:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mWaterMarkStickerWeatherThumbRes:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mWaterMarkStickerTimeThumbRes:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mWaterMarkStickerTravelThumbRes:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mWaterMarkStickerFoodThumbRes:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mWaterMarkStickerEmojiThumbRes:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mWaterMarkStickerSportsThumbRes:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mElementFormThumbRes:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mElementActualThumbRes:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    goto :goto_0

    :pswitch_b
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mElementBubbleThumbRes:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    goto :goto_0

    :pswitch_c
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mElementExpressionThumbRes:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    goto :goto_0

    :pswitch_d
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mElementMustacheThumbRes:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    goto :goto_0

    :pswitch_e
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mElementEyesThumbRes:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    goto :goto_0

    :pswitch_f
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mElementGlassesThumbRes:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    goto :goto_0

    :pswitch_10
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mElementFrameThumbRes:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    goto :goto_0

    :pswitch_11
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mMineStickerMine1Res:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    goto :goto_0

    :pswitch_12
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mMineStickerMine2Res:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    goto :goto_0

    :pswitch_13
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mMineStickerMine3Res:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    goto :goto_0

    :pswitch_14
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelConstants;->mLabelRes:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    goto :goto_0

    :pswitch_15
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelConstants;->mLabelRes:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    goto :goto_0

    :pswitch_16
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelConstants;->mLabelRes:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    goto :goto_0

    :pswitch_17
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelConstants;->mLabelRes:[I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_f
        :pswitch_b
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mType:I

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDensity()F
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    aget v0, v0, p1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const v8, 0x7f0300c4

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mType:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->FCL:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->keylistener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_1
    if-nez p1, :cond_2

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->isAlreadyFocused:Z

    if-nez v5, :cond_2

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->isAlreadyFocused:Z

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mGridView:Landroid/widget/GridView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mGridView:Landroid/widget/GridView;

    new-instance v6, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$2;

    invoke-direct {v6, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$2;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)V

    const-wide/16 v8, 0x19

    invoke-virtual {v5, v6, v8, v9}, Landroid/widget/GridView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mParent:Landroid/view/ViewGroup;

    return-object p2

    :pswitch_1
    const/4 v4, 0x0

    if-nez p2, :cond_3

    invoke-virtual {v2, v8, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v4, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$ImageHolder;

    invoke-direct {v4, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$ImageHolder;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)V

    const v5, 0x7f0e0425

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v4, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$ImageHolder;->holderImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    aget v5, v5, p1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$ImageHolder;

    iget-object v1, v4, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$ImageHolder;->holderImageView:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x0

    if-nez p2, :cond_4

    invoke-virtual {v2, v8, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v5, 0x7f02041c

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$ImageHolder;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$ImageHolder;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)V

    const v5, 0x7f0e0428

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$ImageHolder;->holderImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    aget v5, v5, p1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$ImageHolder;

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$ImageHolder;->holderImageView:Landroid/widget/ImageView;

    goto :goto_2

    :pswitch_3
    const/4 v3, 0x0

    if-nez p2, :cond_5

    invoke-virtual {v2, v8, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v3, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$ImageHolder;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$ImageHolder;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)V

    const v5, 0x7f0e0426

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$ImageHolder;->holderImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_3
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    aget v5, v5, p1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$ImageHolder;

    iget-object v1, v3, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$ImageHolder;->holderImageView:Landroid/widget/ImageView;

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v11, 0x0

    :goto_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mNumThumbCount:I

    if-ge v11, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const-string v0, "shruthi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " clickedViewId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mCurrentRes[clickedViewId] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mType:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    const-string v1, "Sticker"

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    aget v3, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;Ljava/util/ArrayList;)V

    invoke-interface {v6, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;->onDecorationItemAdded(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;)V

    goto :goto_1

    :pswitch_2
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    const-string v1, "Sticker"

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mWaterMarkStickerRes:[I

    aget v3, v3, v2

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mType:I

    invoke-static {v9, v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getStickerEditTextInfo(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;Ljava/util/ArrayList;)V

    invoke-interface {v6, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;->onDecorationItemAdded(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;)V

    goto :goto_1

    :pswitch_3
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    const-string v1, "Sticker"

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mWaterMarkStickerWeatherOriginalRes:[I

    aget v3, v3, v2

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mType:I

    invoke-static {v9, v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getStickerEditTextInfo(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;Ljava/util/ArrayList;)V

    invoke-interface {v6, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;->onDecorationItemAdded(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;)V

    goto :goto_1

    :pswitch_4
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    const-string v1, "Sticker"

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mWaterMarkStickerTimeOriginalRes:[I

    aget v3, v3, v2

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mType:I

    invoke-static {v9, v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getStickerEditTextInfo(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;Ljava/util/ArrayList;)V

    invoke-interface {v6, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;->onDecorationItemAdded(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;)V

    goto :goto_1

    :pswitch_5
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    const-string v1, "Sticker"

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mWaterMarkStickerTravelOriginalRes:[I

    aget v3, v3, v2

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mType:I

    invoke-static {v9, v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getStickerEditTextInfo(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;Ljava/util/ArrayList;)V

    invoke-interface {v6, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;->onDecorationItemAdded(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;)V

    goto :goto_1

    :pswitch_6
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    const-string v1, "Sticker"

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mWaterMarkStickerFoodOriginalRes:[I

    aget v3, v3, v2

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mType:I

    invoke-static {v9, v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getStickerEditTextInfo(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;Ljava/util/ArrayList;)V

    invoke-interface {v6, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;->onDecorationItemAdded(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;)V

    goto/16 :goto_1

    :pswitch_7
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    const-string v1, "Sticker"

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mWaterMarkStickerEmojiOriginalRes:[I

    aget v3, v3, v2

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mType:I

    invoke-static {v9, v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getStickerEditTextInfo(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;Ljava/util/ArrayList;)V

    invoke-interface {v6, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;->onDecorationItemAdded(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    const-string v1, "Sticker"

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mWaterMarkStickerSportsOriginalRes:[I

    aget v3, v3, v2

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mType:I

    invoke-static {v9, v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getStickerEditTextInfo(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;Ljava/util/ArrayList;)V

    invoke-interface {v6, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;->onDecorationItemAdded(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;)V

    goto/16 :goto_1

    :pswitch_9
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    const-string v1, "Sticker"

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mElementStickerRes:[I

    aget v3, v3, v2

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mType:I

    invoke-static {v9, v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getStickerEditTextInfo(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;Ljava/util/ArrayList;)V

    invoke-interface {v6, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;->onDecorationItemAdded(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;)V

    goto/16 :goto_1

    :pswitch_a
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    const-string v1, "Sticker"

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mElementFormOriginalRes:[I

    aget v3, v3, v2

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mType:I

    invoke-static {v9, v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getStickerEditTextInfo(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;Ljava/util/ArrayList;)V

    invoke-interface {v6, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;->onDecorationItemAdded(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;)V

    goto/16 :goto_1

    :pswitch_b
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    const-string v1, "Sticker"

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mElementActualOriginalRes:[I

    aget v3, v3, v2

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mType:I

    invoke-static {v9, v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getStickerEditTextInfo(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;Ljava/util/ArrayList;)V

    invoke-interface {v6, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;->onDecorationItemAdded(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;)V

    goto/16 :goto_1

    :pswitch_c
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    const-string v1, "Sticker"

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mElementBubbleOriginalRes:[I

    aget v3, v3, v2

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mType:I

    invoke-static {v9, v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getStickerEditTextInfo(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;Ljava/util/ArrayList;)V

    invoke-interface {v6, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;->onDecorationItemAdded(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;)V

    goto/16 :goto_1

    :pswitch_d
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    const-string v1, "Sticker"

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mElementExpressionOriginalRes:[I

    aget v3, v3, v2

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mType:I

    invoke-static {v9, v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getStickerEditTextInfo(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;Ljava/util/ArrayList;)V

    invoke-interface {v6, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;->onDecorationItemAdded(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;)V

    goto/16 :goto_1

    :pswitch_e
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    const-string v1, "Sticker"

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mElementMustacheOriginalRes:[I

    aget v3, v3, v2

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mType:I

    invoke-static {v9, v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getStickerEditTextInfo(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;Ljava/util/ArrayList;)V

    invoke-interface {v6, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;->onDecorationItemAdded(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;)V

    goto/16 :goto_1

    :pswitch_f
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    const-string v1, "Sticker"

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mElementEyesOriginalRes:[I

    aget v3, v3, v2

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mType:I

    invoke-static {v9, v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getStickerEditTextInfo(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;Ljava/util/ArrayList;)V

    invoke-interface {v6, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;->onDecorationItemAdded(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;)V

    goto/16 :goto_1

    :pswitch_10
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    const-string v1, "Sticker"

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mElementGlassesOriginalRes:[I

    aget v3, v3, v2

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mType:I

    invoke-static {v9, v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getStickerEditTextInfo(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;Ljava/util/ArrayList;)V

    invoke-interface {v6, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;->onDecorationItemAdded(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;)V

    goto/16 :goto_1

    :pswitch_11
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    const-string v1, "Sticker"

    sget-object v3, Lcom/sec/android/mimage/photoretouching/Decoration/StickerConstants;->mElementFrameOriginalRes:[I

    aget v3, v3, v2

    const/4 v4, 0x0

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mType:I

    invoke-static {v9, v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/EditableStickerUtil;->getStickerEditTextInfo(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;Ljava/util/ArrayList;)V

    invoke-interface {v6, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;->onDecorationItemAdded(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;)V

    goto/16 :goto_1

    :pswitch_12
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    const-string v1, "Sticker"

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mCurrentRes:[I

    aget v3, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;Ljava/util/ArrayList;)V

    invoke-interface {v6, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;->onDecorationItemAdded(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;)V

    goto/16 :goto_1

    :pswitch_13
    move v5, v2

    add-int/lit8 v5, v5, 0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->onDecorationListener:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;

    new-instance v3, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;

    const-string v4, "Label"

    sget-object v1, Lcom/sec/android/mimage/photoretouching/Decoration/LabelConstants;->mLabelRes:[I

    aget v6, v1, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;-><init>(Ljava/lang/String;IILandroid/graphics/Bitmap;Ljava/util/ArrayList;)V

    invoke-interface {v0, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationAttachFragment$OnDecorationAttachInterfaceListener;->onDecorationItemAdded(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationItem;)V

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_9
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_10
        :pswitch_c
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateGridOnExpansionFinish(ZLcom/samsung/android/sdk/rcl/RclExpansionHelper;)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mGridView:Landroid/widget/GridView;

    check-cast v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationGridView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mGridView:Landroid/widget/GridView;

    check-cast v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationGridView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationGridView;->computeVerticalScrollOffset()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExpansionFinish, Resize Helper isLock? previous["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->isLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] current[true]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->lock()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExpansionFinish, Resize Helper isLock? previous["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->isLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] current[false]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->unlock()V

    goto :goto_0
.end method
