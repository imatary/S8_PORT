.class public Lcom/android/keyguard/sec/KeyguardShortcutView;
.super Landroid/widget/LinearLayout;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutImageView;,
        Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;
    }
.end annotation


# static fields
.field private static final ACTION_USER_ACTIVITY_BY_SHORTCUT:Ljava/lang/String; = "com.android.internal.policy.impl.sec.UserActivityByShortcut"

.field private static final APPLICATION_SEPERATOR:C = ';'

.field private static final BADGE_COLUMNS:[Ljava/lang/String;

.field private static final BADGE_URI:Landroid/net/Uri;

.field private static final PACKAGE_CLASS_SEPERATOR:C = '/'

.field private static mBadgeCountColor:I

.field private static final mBlurPaint:Landroid/graphics/Paint;

.field private static mGlowCanvas:Landroid/graphics/Canvas;

.field private static final mHolographicPaint:Landroid/graphics/Paint;

.field private static mOuterGlowColor:I

.field private static final mSaturationPaint:Landroid/graphics/Paint;

.field private static mShortcutImageViewHeight:I

.field private static mShortcutImageViewWidth:I

.field private static mTempOffset:[I

.field private static sBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private static sCoarseClipTable:Landroid/graphics/MaskFilter;

.field private static sFontSizeDefault:I

.field private static sFontSizeSmall:I

.field private static sIconCenterXOffset:I

.field private static sIconTopToTopOffset:I

.field private static sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static sShortcutImageViewPaddingTop:I


# instance fields
.field private DBG:Z

.field private final FADE_IN_OUT_ANIMATION_DURATION:I

.field private final MISSED_EVENT_UPDATE:I

.field private TAG:Ljava/lang/String;

.field private isIgnoreTouch:Z

.field private final mBadgeObserver:Landroid/database/ContentObserver;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDistance:D

.field private mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFirstBorder:I

.field private mHandler:Landroid/os/Handler;

.field private mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

.field private mIconDpi:I

.field private mIconHeight:I

.field private mIconWidth:I

.field private mIsFirst:Z

.field private mIsTouchExplorationEnabled:Z

.field private mItemCount:I

.field private mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

.field private mLaunchIntent:Landroid/content/Intent;

.field private mOldBounds:Landroid/graphics/Rect;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSecondBorder:I

.field private mStartX:F

.field private mStartY:F

.field private mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

.field private userContext:Landroid/content/Context;

.field private userInfo:Landroid/content/pm/UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    const/16 v0, 0xc8

    invoke-static {v2, v0}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mTempOffset:[I

    sput v2, Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewWidth:I

    sput v2, Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewHeight:I

    const-string/jumbo v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->BADGE_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "badgecount"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->BADGE_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v6, -0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v0, "KeyguardShortcutView"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->userContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->userInfo:Landroid/content/pm/UserInfo;

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mItemCount:I

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->FADE_IN_OUT_ANIMATION_DURATION:I

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsTouchExplorationEnabled:Z

    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->isIgnoreTouch:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D

    const/16 v0, 0x12c2

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->MISSED_EVENT_UPDATE:I

    new-instance v0, Lcom/android/keyguard/sec/KeyguardShortcutView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardShortcutView$1;-><init>(Lcom/android/keyguard/sec/KeyguardShortcutView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardShortcutView$2;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/keyguard/sec/KeyguardShortcutView$2;-><init>(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBadgeObserver:Landroid/database/ContentObserver;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setGravity(I)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->userInfo:Landroid/content/pm/UserInfo;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->userInfo:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "main user"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getLauncherLargeIconDensity()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconDpi:I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "set_shortcuts_mode"

    invoke-static {v0, v2, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v7, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_first_border_shortcut:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFirstBorder:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_second_border:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mSecondBorder:I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v7}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mGlowCanvas:Landroid/graphics/Canvas;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mGlowCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v7}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x40c00000    # 6.0f

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardShortcutView;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v0, -0x1

    sput v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOuterGlowColor:I

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v0, v2, v3}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setContrastSaturation(Landroid/graphics/ColorMatrix;FF)V

    sget-object v2, Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v2, Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsTouchExplorationEnabled:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_application_shortcut_icon_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_application_shortcut_icon_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewHeight:I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$drawable;->homescreen_menu_noti_bg:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_application_shortcut_badge_fontsize_default:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sFontSizeDefault:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_application_shortcut_badge_fontsize_small:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sFontSizeSmall:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_application_shortcut_badge_icon_centerXOffset:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sIconCenterXOffset:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_application_shortcut_badge_icon_topToTopOffset:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sIconTopToTopOffset:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_application_shortcut_icon_padding_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sShortcutImageViewPaddingTop:I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$color;->keyguard_text_color_white:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBadgeCountColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/keyguard/sec/KeyguardShortcutView;->BADGE_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "lock_screen_shortcut_app_list"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "activityList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_5

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setVisibility(I)V

    :goto_3
    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "android"

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->userInfo:Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->userContext:Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->userContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "not main user"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Couldn\'t get user info"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->userContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Couldn\'t create user context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setVisibility(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "density = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "touch_exploration_enabled"

    invoke-static {v0, v2, v1, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v5, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "explore by touch mode off"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    iput-boolean v5, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsTouchExplorationEnabled:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "explore by touch mode on"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x3b

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-interface {v2, v0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->reArrangeSpace()V

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mItemCount:I

    goto/16 :goto_3

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->setEachItem(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    move v1, v0

    goto :goto_4
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardShortcutView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->reloadBadges()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardShortcutView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsTouchExplorationEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/keyguard/sec/KeyguardShortcutView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIsFirst:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/KeyguardShortcutView;)F
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mStartX:F

    return v0
.end method

.method static synthetic access$1602(Lcom/android/keyguard/sec/KeyguardShortcutView;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mStartX:F

    return p1
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/KeyguardShortcutView;)F
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mStartY:F

    return v0
.end method

.method static synthetic access$1702(Lcom/android/keyguard/sec/KeyguardShortcutView;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mStartY:F

    return p1
.end method

.method static synthetic access$1800(Lcom/android/keyguard/sec/KeyguardShortcutView;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/android/keyguard/sec/KeyguardShortcutView;D)D
    .locals 1

    iput-wide p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mDistance:D

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->hideOtherShortcuts(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardShortcutView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/keyguard/sec/KeyguardShortcutView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFirstBorder:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/sec/KeyguardShortcutView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mSecondBorder:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/sec/KeyguardShortcutView;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mUnlockView:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/keyguard/sec/KeyguardShortcutView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->launchApplication()V

    return-void
.end method

.method static synthetic access$2600()I
    .locals 1

    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sFontSizeDefault:I

    return v0
.end method

.method static synthetic access$2700()I
    .locals 1

    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBadgeCountColor:I

    return v0
.end method

.method static synthetic access$2800()I
    .locals 1

    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sIconTopToTopOffset:I

    return v0
.end method

.method static synthetic access$2900()I
    .locals 1

    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sIconCenterXOffset:I

    return v0
.end method

.method static synthetic access$3000()Landroid/graphics/MaskFilter;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method static synthetic access$3100()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHolographicPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3200()I
    .locals 1

    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOuterGlowColor:I

    return v0
.end method

.method static synthetic access$3300()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mSaturationPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3400()I
    .locals 1

    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewWidth:I

    return v0
.end method

.method static synthetic access$3500()I
    .locals 1

    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mShortcutImageViewHeight:I

    return v0
.end method

.method static synthetic access$3600()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBlurPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3700()[I
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mTempOffset:[I

    return-object v0
.end method

.method static synthetic access$3800()I
    .locals 1

    sget v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sFontSizeSmall:I

    return v0
.end method

.method static synthetic access$3900()Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardShortcutView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/keyguard/sec/KeyguardShortcutView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/keyguard/sec/KeyguardShortcutView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardShortcutView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->BADGE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/KeyguardShortcutView;->BADGE_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method private createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 10

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    monitor-enter v4

    :try_start_0
    iget v3, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    iget v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    instance-of v1, p1, Landroid/graphics/drawable/PaintDrawable;

    if-nez v1, :cond_2

    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-gtz v3, :cond_6

    :cond_1
    :goto_1
    monitor-exit v4

    return-object p1

    :cond_2
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-nez v1, :cond_3

    :goto_2
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v1, v0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "PaintDrawable"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-nez v1, :cond_5

    :goto_3
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "BitmapDrawable"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    if-lez v2, :cond_1

    if-ge v3, v1, :cond_8

    :cond_7
    iget-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-nez v6, :cond_9

    :goto_4
    int-to-float v6, v1

    int-to-float v7, v5

    div-float/2addr v6, v7

    if-gt v1, v5, :cond_a

    if-gt v5, v1, :cond_b

    :goto_5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_c

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_6
    iget v5, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    sget v7, Lcom/android/keyguard/sec/KeyguardShortcutView;->sShortcutImageViewPaddingTop:I

    add-int/2addr v6, v7

    invoke-static {v5, v6, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v6, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    sub-int/2addr v6, v3

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    sub-int/2addr v7, v2

    div-int/lit8 v7, v7, 0x2

    sget v8, Lcom/android/keyguard/sec/KeyguardShortcutView;->sShortcutImageViewPaddingTop:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    add-int/2addr v3, v6

    add-int/2addr v2, v7

    invoke-virtual {p1, v6, v7, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p1, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :cond_8
    if-lt v2, v5, :cond_7

    if-gt v1, v3, :cond_1

    if-gt v5, v2, :cond_1

    iget-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-nez v6, :cond_d

    :goto_7
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget v7, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconWidth:I

    iget v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconHeight:I

    sget v9, Lcom/android/keyguard/sec/KeyguardShortcutView;->sShortcutImageViewPaddingTop:I

    add-int/2addr v8, v9

    invoke-static {v7, v8, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v8, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    sget v8, Lcom/android/keyguard/sec/KeyguardShortcutView;->sShortcutImageViewPaddingTop:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v2, v8

    add-int/2addr v1, v3

    add-int/2addr v5, v2

    invoke-virtual {p1, v3, v2, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p1, v1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :cond_9
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "width < iconWidth || height < iconHeight"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_a
    int-to-float v1, v3

    div-float/2addr v1, v6

    float-to-int v1, v1

    move v2, v1

    goto/16 :goto_5

    :cond_b
    int-to-float v1, v2

    mul-float/2addr v1, v6

    float-to-int v1, v1

    move v3, v1

    goto/16 :goto_5

    :cond_c
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_6

    :cond_d
    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "iconWidth <= width && iconHeight <= height"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7
.end method

.method private getLaunchIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getLauncherLargeIconDensity()I
    .locals 3

    const/16 v2, 0x140

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sparse-switch v1, :sswitch_data_0

    int-to-float v0, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :sswitch_0
    const/16 v0, 0xa0

    return v0

    :sswitch_1
    const/16 v0, 0xf0

    return v0

    :sswitch_2
    return v2

    :sswitch_3
    return v2

    :sswitch_4
    const/16 v0, 0x1e0

    return v0

    :sswitch_5
    const/16 v0, 0x280

    return v0

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_4
        0x1e0 -> :sswitch_5
    .end sparse-switch
.end method

.method private hideOtherShortcuts(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getChildCount()I

    move-result v0

    move v2, v0

    :goto_0
    if-gez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_2
    if-eq p1, v1, :cond_1

    if-nez p2, :cond_4

    :cond_3
    move-object v0, v1

    check-cast v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->isDummy()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    check-cast v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->isDummy()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private launchApplication()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.internal.policy.impl.sec.UserActivityByShortcut"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t find the component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reArrangeSpace()V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getChildCount()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_0

    add-int/lit8 v0, v1, -0x1

    move v2, v0

    :goto_1
    if-gez v2, :cond_1

    return-void

    :pswitch_1
    const/16 v0, 0xa

    move v3, v0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x11

    move v3, v0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    if-nez v0, :cond_2

    :goto_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    check-cast v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getPaddingLeft()I

    move-result v5

    move-object v0, v1

    check-cast v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getPaddingRight()I

    move-result v0

    check-cast v1, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    add-int/2addr v5, v3

    add-int/2addr v0, v3

    invoke-virtual {v1, v5, v4, v0, v4}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setPadding(IIII)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private refreshShortcutItems()V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getChildCount()I

    move-result v0

    move v2, v0

    :goto_0
    if-gez v2, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v3}, Lcom/android/keyguard/sec/KeyguardShortcutView;->hideOtherShortcuts(Landroid/view/View;Z)V

    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    if-nez v0, :cond_1

    :goto_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    check-cast v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->onPressed(Z)V

    check-cast v1, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setOpacity(D)V

    goto :goto_1
.end method

.method private reloadBadges()V
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getChildCount()I

    move-result v0

    move v7, v0

    :goto_0
    if-gez v7, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v0, v6, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    :cond_2
    move-object v0, v6

    check-cast v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->isDummy()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/sec/KeyguardShortcutView;->BADGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/keyguard/sec/KeyguardShortcutView;->BADGE_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, v6

    check-cast v3, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\" and class=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, v6

    check-cast v3, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    check-cast v0, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->setBadgeCount(I)V

    check-cast v6, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    invoke-virtual {v6}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->refreshBadgeCount()V

    goto :goto_2
.end method

.method private static setContrastSaturation(Landroid/graphics/ColorMatrix;FF)V
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    add-float v0, p1, v8

    const/high16 v1, -0x41000000    # -0.5f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    sub-float v1, v8, p2

    const v2, 0x3e5a1cac    # 0.213f

    mul-float/2addr v2, v1

    const v3, 0x3f370a3d    # 0.715f

    mul-float/2addr v3, v1

    const v4, 0x3d9374bc    # 0.072f

    mul-float/2addr v1, v4

    const/16 v4, 0x14

    new-array v4, v4, [F

    const/4 v5, 0x0

    add-float v6, v2, p2

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v5, 0x2

    aput v1, v4, v5

    const/4 v5, 0x3

    aput v7, v4, v5

    const/4 v5, 0x4

    aput v0, v4, v5

    const/4 v5, 0x5

    aput v2, v4, v5

    const/4 v5, 0x6

    add-float v6, v3, p2

    aput v6, v4, v5

    const/4 v5, 0x7

    aput v1, v4, v5

    const/16 v5, 0x8

    aput v7, v4, v5

    const/16 v5, 0x9

    aput v0, v4, v5

    const/16 v5, 0xa

    aput v2, v4, v5

    const/16 v2, 0xb

    aput v3, v4, v2

    const/16 v2, 0xc

    add-float/2addr v1, p2

    aput v1, v4, v2

    const/16 v1, 0xd

    aput v7, v4, v1

    const/16 v1, 0xe

    aput v0, v4, v1

    const/16 v0, 0xf

    aput v7, v4, v0

    const/16 v0, 0x10

    aput v7, v4, v0

    const/16 v0, 0x11

    aput v7, v4, v0

    const/16 v0, 0x12

    aput v8, v4, v0

    const/16 v0, 0x13

    aput v7, v4, v0

    invoke-virtual {p0, v4}, Landroid/graphics/ColorMatrix;->set([F)V

    return-void
.end method

.method private setEachItem(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 6

    const/4 v2, 0x0

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x2f

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-nez v3, :cond_0

    :goto_0
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;-><init>(Lcom/android/keyguard/sec/KeyguardShortcutView;Landroid/content/Context;Landroid/content/ComponentName;Z)V

    # getter for: Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;->access$300(Lcom/android/keyguard/sec/KeyguardShortcutView$ShortcutItem;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-nez v1, :cond_2

    :goto_1
    add-int/lit8 v0, v0, -0x1

    :goto_2
    return v0

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pkg name ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", activityName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mIntent=null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->icon:I

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mIconDpi:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mItemCount:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mOldBounds:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCanvas:Landroid/graphics/Canvas;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mLaunchIntent:Landroid/content/Intent;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-nez v0, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->refreshShortcutItems()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->DBG:Z

    if-nez v0, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardShortcutView;->refreshShortcutItems()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHelpTextCallback(Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mHelpTextCallback:Lcom/android/keyguard/sec/KeyguardUnlockView$HelpTextCallback;

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setPagedView(Lcom/android/keyguard/KeyguardWidgetPager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardShortcutView;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    return-void
.end method
