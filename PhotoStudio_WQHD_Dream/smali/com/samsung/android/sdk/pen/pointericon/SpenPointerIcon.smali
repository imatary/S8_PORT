.class public Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;
.super Ljava/lang/Object;
.source "SpenPointerIcon.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mView:Landroid/view/View;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;)Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public setPointerIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mView:Landroid/view/View;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "view is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-nez p1, :cond_2

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mPointerIconWrapper:Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mView:Landroid/view/View;

    sget v4, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->HOVERING_SPENICON_DEFAULT:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/spen/libwrapper/PointerIconWrapper;->setHoveringSpenIcon(Landroid/content/Context;Landroid/view/View;I)V
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;->mView:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon$1;-><init>(Lcom/samsung/android/sdk/pen/pointericon/SpenPointerIcon;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0
.end method
