.class public Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;
.super Ljava/lang/Object;
.source "SpenContextMenu.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MINIMUM_DELAY:I = 0x3e8

.field private static final MAX_ITEM_COLUMN_COUNT_LANDSCAPE:I = 0x9

.field private static final MAX_ITEM_COLUMN_COUNT_PORTRAIT:I = 0x5

.field private static final POPUP_WINDOW_BACKGROUND:Ljava/lang/String; = "copypaste_quick_popup_bg_mtrl"

.field private static final POPUP_WINDOW_CANCLE:Ljava/lang/String; = "copypaste_ic_quick_popup_cancle_mtrl"

.field private static final POPUP_WINDOW_DIVIDER:Ljava/lang/String; = "copypaste_quick_popup_divider_mtrl"

.field private static final POPUP_WINDOW_MORE:Ljava/lang/String; = "copypaste_ic_quick_popup_more_mtrl"

.field private static final SDK_VERSION:I

.field private static final TAG:Ljava/lang/String; = "SpenContextMenu"

.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_WIDE:I = 0x1

.field private static mType:I


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCancleDrawable:Landroid/graphics/drawable/Drawable;

.field private mCloseButton:Landroid/widget/LinearLayout;

.field private final mContext:Landroid/content/Context;

.field private mContextMenuLayout:Landroid/widget/LinearLayout;

.field private mDelayTime:I

.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mExpendedIconSize:I

.field private mExpendedWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mIconSize:I

.field private mIsDelay:Z

.field private mIsSlideToAbove:Z

.field private mItemBottomPadding:I

.field private mItemHeight:I

.field private mItemLeftPadding:I

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItemRightPadding:I

.field private mItemTopPadding:I

.field private mItemWidth:I

.field private mMaxColumnCount:I

.field private mMaxPopupWindowHeight:I

.field private mMaxPopupWindowWidth:I

.field private mMaxRowCount:I

.field private mMoreButton:Landroid/widget/LinearLayout;

.field private mMoreDrawable:Landroid/graphics/drawable/Drawable;

.field private final mOnItemClickListener:Landroid/view/View$OnClickListener;

.field private mParent:Landroid/view/View;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPopupWindowBackgroundPadding:I

.field private mPopupWindowHeight:I

.field private mPopupWindowWidth:I

.field private mPrevRect:Landroid/graphics/Rect;

.field private mRect:Landroid/graphics/Rect;

.field private mSdkResources:Landroid/content/res/Resources;

.field private mSelectListener:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;

.field private mTextColor:I

.field private mTextSize:I

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->SDK_VERSION:I

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mSelectListener:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mTimer:Ljava/util/Timer;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mHandler:Landroid/os/Handler;

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mDelayTime:I

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIsDelay:Z

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowWidth:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowHeight:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxPopupWindowWidth:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxPopupWindowHeight:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxColumnCount:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxRowCount:I

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mSdkResources:Landroid/content/res/Resources;

    new-instance v2, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$2;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mOnItemClickListener:Landroid/view/View$OnClickListener;

    if-nez p3, :cond_0

    const/4 v2, 0x7

    const-string v3, " The list of menu items must be not null"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mSdkResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mParent:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->refresh()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;",
            ">;",
            "Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mSelectListener:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mTimer:Ljava/util/Timer;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mHandler:Landroid/os/Handler;

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mDelayTime:I

    iput-boolean v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIsDelay:Z

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowWidth:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowHeight:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxPopupWindowWidth:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxPopupWindowHeight:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxColumnCount:I

    iput v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxRowCount:I

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mSdkResources:Landroid/content/res/Resources;

    new-instance v2, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$2;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mOnItemClickListener:Landroid/view/View$OnClickListener;

    if-nez p3, :cond_0

    const/4 v2, 0x7

    const-string v3, " The list of menu items must be not null"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mSdkResources:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mParent:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mSelectListener:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->refresh()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIsDelay:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mDelayTime:I

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIsSlideToAbove:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIsSlideToAbove:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMoreButton:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mCloseButton:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowWidth:I

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->updateTimer(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mSelectListener:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowHeight:I

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowHeight:I

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxPopupWindowHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->setExtraRowVisible(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mParent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getCloseButtonLayout()Landroid/widget/LinearLayout;
    .locals 13

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    iget v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mExpendedWidth:I

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setClickable(Z)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setFocusable(Z)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setLongClickable(Z)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setSelected(Z)V

    new-instance v7, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$4;

    invoke-direct {v7, p0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$4;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    const-string v8, "pen_string_cancel"

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/pen/util/SpenControlUtil;->getMultiLanguage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v6, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->create(Landroid/content/Context;Landroid/view/View;)Lcom/samsung/android/spen/libwrapper/ViewWrapper;

    move-result-object v4

    sget v7, Lcom/samsung/android/spen/libwrapper/HoverPopupWindowWrapper;->TYPE_TOOLTIP:I

    invoke-virtual {v4, v7}, Lcom/samsung/android/spen/libwrapper/ViewWrapper;->setHoverPopupType(I)V
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mCancleDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mCancleDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mExpendedIconSize:I

    iget v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mExpendedIconSize:I

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mCancleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    sget v7, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->SDK_VERSION:I

    const/16 v8, 0x13

    if-le v7, v8, :cond_2

    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v7, 0x1

    new-array v7, v7, [[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [I

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/high16 v10, 0x29000000

    aput v10, v8, v9

    invoke-direct {v0, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v7, Landroid/graphics/drawable/RippleDrawable;

    const/4 v8, 0x0

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    const/4 v10, -0x1

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v7, v0, v8, v9}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    const/4 v7, 0x0

    iget v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemTopPadding:I

    const/4 v9, 0x0

    iget v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemBottomPadding:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/ImageButton;->setPadding(IIII)V

    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v5

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lcom/samsung/android/spen/libwrapper/utils/PlatformException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private getDividerLayout(Z)Landroid/widget/LinearLayout;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mDividerWidth:I

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    sget v3, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->SDK_VERSION:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mDividerPadding:I

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mDividerPadding:I

    invoke-virtual {v0, v6, v3, v6, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const v3, -0x313132

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private getMoreButtonLayout()Landroid/widget/LinearLayout;
    .locals 14

    const/4 v13, -0x1

    const/4 v12, 0x0

    const/4 v11, -0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mExpendedWidth:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setLongClickable(Z)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setSelected(Z)V

    new-instance v5, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$5;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    const-string v6, "pen_string_amemo_more"

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/pen/util/SpenControlUtil;->getMultiLanguage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mTextColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIconSize:I

    iget v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIconSize:I

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v12, v5, v12, v12}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    sget v5, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->SDK_VERSION:I

    const/16 v6, 0x13

    if-le v5, v6, :cond_2

    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v5, v10, [[I

    new-array v6, v9, [I

    aput-object v6, v5, v9

    new-array v6, v10, [I

    const/high16 v7, 0x29000000

    aput v7, v6, v9

    invoke-direct {v0, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v13}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v5, v0, v12, v6}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemTopPadding:I

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemBottomPadding:I

    invoke-virtual {v4, v9, v5, v9, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemHeight:I

    invoke-direct {v5, v11, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v3
.end method

.method public static getType()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mType:I

    return v0
.end method

.method private initDefaultSettings()V
    .locals 12

    const/16 v8, 0x9

    const/4 v7, 0x5

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    const-string v4, "accessibility"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/samsung/android/spen/R$dimen;->contextmenu_popup_window_height:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowHeight:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/samsung/android/spen/R$dimen;->contextmenu_item_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemWidth:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/samsung/android/spen/R$dimen;->contextmenu_item_height:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemHeight:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/samsung/android/spen/R$dimen;->contextmenu_item_left_padding:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemLeftPadding:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/samsung/android/spen/R$dimen;->contextmenu_item_right_padding:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemRightPadding:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/samsung/android/spen/R$dimen;->contextmenu_item_top_padding:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemTopPadding:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/samsung/android/spen/R$dimen;->contextmenu_item_bottom_padding:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemBottomPadding:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/samsung/android/spen/R$dimen;->contextmenu_item_text_size:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mTextSize:I

    const-string v0, "#252525"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mTextColor:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/samsung/android/spen/R$dimen;->contextmenu_item_icon_size:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIconSize:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/samsung/android/spen/R$dimen;->contextmenu_popup_window_background_padding:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowBackgroundPadding:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/samsung/android/spen/R$dimen;->contextmenu_expended_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mExpendedWidth:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/samsung/android/spen/R$dimen;->contextmenu_expended_icon_size:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mExpendedIconSize:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;

    iget-boolean v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->isCropItem:Z

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/samsung/android/spen/R$dimen;->contextmenu_crop_item_popup_window_height:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowHeight:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/samsung/android/spen/R$dimen;->contextmenu_crop_item_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemWidth:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/samsung/android/spen/R$dimen;->contextmenu_crop_item_height:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemHeight:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/samsung/android/spen/R$dimen;->contextmenu_crop_item_text_size:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mTextSize:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/samsung/android/spen/R$dimen;->contextmenu_crop_item_icon_size:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIconSize:I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/samsung/android/spen/R$dimen;->contextmenu_divider_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mDividerWidth:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/samsung/android/spen/R$dimen;->contextmenu_divider_padding:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mDividerPadding:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mParent:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemWidth:I

    div-int/2addr v0, v4

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxColumnCount:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxColumnCount:I

    if-le v0, v7, :cond_1

    iput v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxColumnCount:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxColumnCount:I

    if-le v0, v4, :cond_4

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxColumnCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxColumnCount:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxColumnCount:I

    if-le v0, v4, :cond_5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v8, v0

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxColumnCount:I

    int-to-double v10, v0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    :goto_2
    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxRowCount:I

    :cond_2
    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemWidth:I

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxColumnCount:I

    mul-int/2addr v0, v3

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mExpendedWidth:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mDividerWidth:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxPopupWindowWidth:I

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowHeight:I

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemHeight:I

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxRowCount:I

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxPopupWindowHeight:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    const-string v3, "copypaste_quick_popup_divider_mtrl"

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/pen/util/SpenControlUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    const-string v0, "copypaste_ic_quick_popup_more_mtrl"

    const-string v3, "drawable"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIconSize:I

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIconSize:I

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/util/SpenControlUtil;->resizeImage(Landroid/content/Context;Landroid/content/res/Resources;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    const-string v0, "copypaste_ic_quick_popup_cancle_mtrl"

    const-string v3, "drawable"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIconSize:I

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIconSize:I

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/util/SpenControlUtil;->resizeImage(Landroid/content/Context;Landroid/content/res/Resources;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mCancleDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPrevRect:Landroid/graphics/Rect;

    return-void

    :cond_3
    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxColumnCount:I

    if-le v0, v8, :cond_1

    iput v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxColumnCount:I

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto/16 :goto_1

    :cond_5
    move v0, v3

    goto :goto_2
.end method

.method private setExtraRowVisible(Z)V
    .locals 5

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxRowCount:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxColumnCount:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContextMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static setType(I)V
    .locals 0

    sput p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mType:I

    return-void
.end method

.method private updateContextMenuLocation()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_0
    return-void
.end method

.method private updateTimer(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$3;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method public close()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->hide()V

    const/4 v0, 0x1

    return v0
.end method

.method public getItemEnabled(I)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;

    iget v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->id:I

    if-ne v3, p1, :cond_2

    iget-boolean v1, v0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->enable:Z

    goto :goto_0
.end method

.method protected getItemView(I)Landroid/view/View;
    .locals 14

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gt v9, p1, :cond_1

    :cond_0
    const-string v9, "SpenContextMenu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mContext is NULL at position = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_1
    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    iget v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemHeight:I

    invoke-direct {v7, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-direct {v5, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;

    iget-boolean v9, v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->enable:Z

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;

    iget-boolean v9, v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->enable:Z

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;

    iget-boolean v9, v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->enable:Z

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setLongClickable(Z)V

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;

    iget-boolean v9, v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->enable:Z

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;

    iget v9, v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->id:I

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setId(I)V

    iget v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemWidth:I

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setWidth(I)V

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;

    iget-object v2, v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableBackgroundPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    const v11, 0x10100a7

    aput v11, v9, v10

    invoke-virtual {v0, v9, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;

    iget-object v1, v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableBackgroundNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    const/4 v9, 0x0

    new-array v9, v9, [I

    invoke-virtual {v0, v9, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_3
    sget v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->SDK_VERSION:I

    const/16 v10, 0x13

    if-le v9, v10, :cond_9

    if-nez v1, :cond_9

    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v9, 0x1

    new-array v9, v9, [[I

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [I

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/high16 v12, 0x29000000

    aput v12, v10, v11

    invoke-direct {v3, v9, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v9, Landroid/graphics/drawable/RippleDrawable;

    const/4 v10, 0x0

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    const/4 v12, -0x1

    invoke-direct {v11, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v9, v3, v10, v11}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mTextColor:I

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v9, 0x0

    iget v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mTextSize:I

    int-to-float v10, v10

    invoke-virtual {v5, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;

    iget-object v8, v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->name:Ljava/lang/String;

    if-eqz v8, :cond_4

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_4
    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;

    iget-boolean v9, v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->enable:Z

    if-nez v9, :cond_5

    const v9, 0x3e99999a    # 0.3f

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_5
    const/4 v4, 0x0

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;

    iget-boolean v9, v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->enable:Z

    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;

    iget-object v4, v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableDisableItem:Landroid/graphics/drawable/Drawable;

    :goto_2
    if-eqz v4, :cond_6

    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIconSize:I

    iget v13, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIconSize:I

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v4, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_6
    const/4 v9, 0x0

    iget v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemTopPadding:I

    const/4 v11, 0x0

    iget v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemBottomPadding:I

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v9, 0x11

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_c

    :cond_7
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;

    iget-boolean v9, v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->enable:Z

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mOnItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    iget v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemWidth:I

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v5, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_9
    sget v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->SDK_VERSION:I

    const/16 v10, 0x10

    if-ge v9, v10, :cond_a

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_b
    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;

    iget-object v4, v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->drawableNormalItem:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_c
    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;

    iget-object v9, v9, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method protected getListener()Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mSelectListener:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;

    return-object v0
.end method

.method protected getPopupHeight()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method protected getPopupMenu()Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected getSeparatorView(II)Landroid/view/View;
    .locals 4

    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    sget v2, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->SDK_VERSION:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const v2, -0x313132

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public getStyleAnimation(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mSdkResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "SpenContextMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLayoutID : styleName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mSdkResources:Landroid/content/res/Resources;

    const-string v1, "style"

    invoke-static {}, Lcom/samsung/android/sdk/pen/Spen;->getSpenPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "SpenContextMenu"

    const-string v1, "ContextMenu is hidden"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected refresh()V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, -0x2

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->initDefaultSettings()V

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContextMenuLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContextMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContextMenuLayout:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContextMenuLayout:Landroid/widget/LinearLayout;

    iget v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowBackgroundPadding:I

    iget v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowBackgroundPadding:I

    iget v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowBackgroundPadding:I

    iget v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowBackgroundPadding:I

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v1, 0x0

    :goto_0
    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxColumnCount:I

    if-ge v1, v6, :cond_3

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    :goto_1
    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxRowCount:I

    if-ge v5, v6, :cond_1

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxColumnCount:I

    mul-int/2addr v6, v5

    add-int/2addr v6, v1

    invoke-virtual {p0, v6}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->getItemView(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemHeight:I

    invoke-direct {v6, v12, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContextMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;

    iget-boolean v6, v6, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->isCropItem:Z

    if-ne v6, v13, :cond_2

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxColumnCount:I

    add-int/lit8 v6, v6, -0x1

    if-eq v1, v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContextMenuLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v11}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->getDividerLayout(Z)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v11}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->setExtraRowVisible(Z)V

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMaxRowCount:I

    if-le v6, v13, :cond_4

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContextMenuLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v13}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->getDividerLayout(Z)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->getMoreButtonLayout()Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMoreButton:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContextMenuLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mMoreButton:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->getCloseButtonLayout()Landroid/widget/LinearLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mCloseButton:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContextMenuLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mCloseButton:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContextMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11, v11}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContextMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    iput v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowWidth:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    iget v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowWidth:I

    iput v7, v6, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    iget v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowHeight:I

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    new-instance v6, Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContextMenuLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const-string v7, "ContextMenuPopupAnimation"

    invoke-virtual {p0, v7}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->getStyleAnimation(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v11}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v11}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mContext:Landroid/content/Context;

    const-string v7, "copypaste_quick_popup_bg_mtrl"

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/pen/util/SpenControlUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v7, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$1;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;)V

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setItemEnabled(IZ)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;

    iget v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->id:I

    if-ne v2, p1, :cond_1

    iput-boolean p2, v0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenuItemInfo;->enable:Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->refresh()V

    goto :goto_0
.end method

.method protected setListener(Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mSelectListener:Lcom/samsung/android/sdk/pen/engine/SpenContextMenu$ContextMenuListener;

    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .locals 4

    const-string v1, "SpenContextMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mParent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowHeight:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindowHeight:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setRect(Landroid/graphics/Rect;Z)V
    .locals 3

    const-string v0, "SpenContextMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->setRect(Landroid/graphics/Rect;)V

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIsSlideToAbove:Z

    return-void
.end method

.method public show()V
    .locals 11

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mParent:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPrevRect:Landroid/graphics/Rect;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->updateContextMenuLocation()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPrevRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPrevRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPrevRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPrevRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-eq v5, v6, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->hide()V

    :cond_3
    const-string v5, "SpenContextMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ContextMenu is shown : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPrevRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIsDelay:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    new-array v2, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    const-class v5, Landroid/widget/PopupWindow;

    const-string v6, "setWindowLayoutType"

    invoke-virtual {v5, v6, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x7cf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/PopupWindow;->update(IIII)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mParent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    if-le v5, v6, :cond_4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mParent:Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6, v10, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v5, "SpenContextMenu"

    const-string v6, "setWindowLayoutType() NoSuchMethodError"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v5, "SpenContextMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWindowLayoutType() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mParent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    sub-int v1, v5, v6

    if-gez v1, :cond_5

    const/4 v1, 0x0

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mParent:Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6, v10, v1, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method

.method public show(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->show()V

    const-string v0, "SpenContextMenu"

    const-string v1, "ContextMenu will be hidden after the delay time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mDelayTime:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->mIsDelay:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenContextMenu;->updateTimer(I)V

    return-void
.end method
