.class public Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "EffectThumbnailListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;
.implements Lcom/samsung/android/glview/GLView$DragListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/glview/GLAbsList$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;,
        Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;,
        Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;,
        Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;,
        Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;
    }
.end annotation


# static fields
.field private static final ANIMATION_TYPE_NONE:I = 0x0

.field private static final ANIMATION_TYPE_SWIPE:I = 0x2

.field private static final ANIMATION_TYPE_TAP:I = 0x1

.field private static final CATEGORY_FIT_ITEM_MAX_COUNT:I = 0x8

.field private static final EDIT_MODE:I = 0x1

.field private static final EFFECT_COLS:I = 0x2

.field private static final EFFECT_ROWS:I = 0x4

.field private static final KEY_STICKER_RECT_POSITION:Ljava/lang/String; = "pref_sticker_rect_position"

.field private static final NORMAL_MODE:I = 0x0

.field private static final SCROLL_BAR_ALPHA_VALUE:F = 0.6f

.field private static final STICKER_COLS:I = 0x2

.field private static final STICKER_ROWS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "EffectThumbnailListMenu"

.field private static final mCurrentBeautyCategoryResourceListLock:Ljava/lang/Object;

.field private static final mCurrentResourceListLock:Ljava/lang/Object;


# instance fields
.field private final BUTTON_FONT_COLOR:I

.field private final EFFECT_BACK_ICON_MARGIN:I

.field private final EFFECT_BACK_ICON_WIDTH:I

.field private final EFFECT_BUTTON_HEIGHT:I

.field private final EFFECT_CATEGORY_AREA_WIDTH:I

.field private final EFFECT_CATEGORY_BUTTON_WIDTH:I

.field private final EFFECT_CATEGORY_HEIGHT:I

.field private final EFFECT_CATEGORY_LIMIT_SPACING:F

.field private final EFFECT_CATEGORY_SCROLL_MARGIN:I

.field private final EFFECT_DONE_BUTTON_RIGHT_MARGIN:I

.field private final EFFECT_DONE_BUTTON_TEXT_SIZE:I

.field private final EFFECT_DONE_BUTTON_UPPER_MARGIN:I

.field private final EFFECT_DOWNLOAD_BUTTON_SIDE_MARGIN:I

.field private final EFFECT_DOWNLOAD_BUTTON_WIDTH:I

.field private final EFFECT_EDIT_BUTTON_LEFT_MARGIN:I

.field private final EFFECT_EDIT_BUTTON_RIGHT_MARGIN:I

.field private final EFFECT_EDIT_BUTTON_TEXT_SIZE:I

.field private final EFFECT_ITEM_HEIGHT:I

.field private final EFFECT_ITEM_WIDTH:I

.field private final EFFECT_LINE_THICKNESS:I

.field private final EFFECT_MENU_BOTTOM_AREA_WIDTH:I

.field private final EFFECT_MENU_GROUP_HEIGHT:I

.field private final EFFECT_MENU_GROUP_POS_X:I

.field private final EFFECT_MENU_GROUP_WIDTH:I

.field private final EFFECT_MENU_HEIGHT:I

.field private final EFFECT_MENU_POS_X:I

.field private final EFFECT_MENU_POS_Y:I

.field private final EFFECT_MENU_SIDE_MARGIN:I

.field private final EFFECT_MENU_WIDTH:I

.field private final EFFECT_NO_EFFECT_BUTTON_HEIGHT:I

.field private final EFFECT_NO_EFFECT_BUTTON_LANDSCAPE_OFFSET_Y:I

.field private final EFFECT_NO_EFFECT_BUTTON_LEFT_MARGIN:I

.field private final EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

.field private final EFFECT_NO_EFFECT_BUTTON_PORTRAIT_OFFSET_Y:I

.field private final EFFECT_NO_EFFECT_BUTTON_SIZE:I

.field private final EFFECT_STANDARD_UPPER_LINE:I

.field private final LIST_MENU_TRANSLATE_OFFSET:I

.field private final NEW_BADGE_ICON_OFFSET:I

.field private final NEW_BADGE_ICON_WIDTH:I

.field private final NEW_BADGE_TEXT_SIZE:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final STICKER_ITEM_HEIGHT:I

.field private final STICKER_ITEM_WIDTH:I

.field private final STICKER_LANDSCAPE_LIST_HEIGHT:I

.field private final STICKER_LANDSCAPE_LIST_LEFT_MARGIN:I

.field private final STICKER_LANDSCAPE_LIST_TOP_MARGIN:I

.field private final STICKER_LANDSCAPE_LIST_WIDTH:I

.field private final STICKER_LIST_HORIZONTAL_SPACING:I

.field private final STICKER_LIST_VERTICAL_SPACING:I

.field private final STICKER_PORTRAIT_LIST_HEIGHT:I

.field private final STICKER_PORTRAIT_LIST_LEFT_MARGIN:I

.field private final STICKER_PORTRAIT_LIST_TOP_MARGIN:I

.field private final STICKER_PORTRAIT_LIST_WIDTH:I

.field private final mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

.field private mBackButton:Lcom/samsung/android/glview/GLButton;

.field private mBackKeyPressed:Z

.field private final mBeautyAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

.field private mBeautyCategoryResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private final mBeautyDragDropItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;",
            ">;"
        }
    .end annotation
.end field

.field private mBeautyFirstBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

.field private final mBeautyItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/EffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBeautyLastBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

.field private mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

.field private mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

.field private mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mCategoryAdapter:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;

.field private mCategoryBackground:Lcom/samsung/android/glview/GLRectangle;

.field private final mCategoryItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

.field private final mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentMode:I

.field private final mCurrentResourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mDoneButton:Lcom/samsung/android/glview/GLButton;

.field private mDoneText:Lcom/samsung/android/glview/GLText;

.field private mDownloadButton:Lcom/samsung/android/glview/GLButton;

.field private final mDragDropItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;",
            ">;"
        }
    .end annotation
.end field

.field private mDragHelpToast:Landroid/widget/Toast;

.field private mEditButton:Lcom/samsung/android/glview/GLButton;

.field private mEditText:Lcom/samsung/android/glview/GLText;

.field private mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

.field private mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

.field private mFirstBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

.field private final mHideAnimation_0:Landroid/view/animation/Animation;

.field private final mHideAnimation_180:Landroid/view/animation/Animation;

.field private final mHideAnimation_270:Landroid/view/animation/Animation;

.field private final mHideAnimation_90:Landroid/view/animation/Animation;

.field private mIsDownloadEffectSupported:Z

.field private mIsNeedShowBaseMenu:Z

.field private mIsNeedToSetScreenId:Z

.field private final mItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/EffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

.field private mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

.field private final mListMenuGestureEventListener:Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;

.field private mListMenuGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

.field private final mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mNewBadge:Lcom/samsung/android/glview/GLText;

.field private mNormalModeDrag:Z

.field private mOrientation:I

.field private final mPreviousBeautyResourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousResourceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousScreenId:Ljava/lang/String;

.field private mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

.field private mRemoveEffectText:Lcom/samsung/android/glview/GLText;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private final mShowAnimation_0:Landroid/view/animation/Animation;

.field private final mShowAnimation_180:Landroid/view/animation/Animation;

.field private final mShowAnimation_270:Landroid/view/animation/Animation;

.field private final mShowAnimation_90:Landroid/view/animation/Animation;

.field private mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/glview/GLGridList;",
            ">;"
        }
    .end annotation
.end field

.field private mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceListLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceListLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 27

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    int-to-float v9, v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    int-to-float v10, v1

    const/4 v13, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-direct/range {v1 .. v13}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;FFFFLcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    const v1, 0x7f0a02fd

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_SIDE_MARGIN:I

    const v1, 0x7f0a02fc

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_LINE_THICKNESS:I

    const v1, 0x7f0a0020

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    const v1, 0x7f0a031a

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_STANDARD_UPPER_LINE:I

    const v1, 0x7f0a0310

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_SIDE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_LINE_THICKNESS:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_SIDE_MARGIN:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_POS_X:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_SIDE_MARGIN:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_POS_Y:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_LINE_THICKNESS:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_SIDE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_HEIGHT:I

    const v1, 0x7f0a001f

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_BOTTOM_AREA_WIDTH:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_SIDE_MARGIN:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_LINE_THICKNESS:I

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_WIDTH:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_WIDTH:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_BOTTOM_AREA_WIDTH:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_HEIGHT:I

    const v1, 0x7f0a03a6

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_WIDTH:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_WIDTH:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_HEIGHT:I

    const v1, 0x7f0a03a7

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_HORIZONTAL_SPACING:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_WIDTH:I

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x6

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_VERTICAL_SPACING:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_HORIZONTAL_SPACING:I

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_VERTICAL_SPACING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_WIDTH:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_HEIGHT:I

    mul-int/lit8 v1, v1, 0x5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_VERTICAL_SPACING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_HEIGHT:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_WIDTH:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_LEFT_MARGIN:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_VERTICAL_SPACING:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_TOP_MARGIN:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_HEIGHT:I

    mul-int/lit8 v1, v1, 0x5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_VERTICAL_SPACING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_VERTICAL_SPACING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_WIDTH:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_HORIZONTAL_SPACING:I

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_HEIGHT:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_LEFT_MARGIN:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_WIDTH:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_HEIGHT:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_TOP_MARGIN:I

    const v1, 0x7f0d002c

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->BUTTON_FONT_COLOR:I

    const v1, 0x7f0a02fe

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_HEIGHT:I

    const v1, 0x7f0a0308

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_RIGHT_MARGIN:I

    const v1, 0x7f0a0309

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_TEXT_SIZE:I

    const v1, 0x7f0a0308

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_RIGHT_MARGIN:I

    const v1, 0x7f0a030a

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_UPPER_MARGIN:I

    const v1, 0x7f0a0302

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_TEXT_SIZE:I

    const v1, 0x7f0a016a

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_WIDTH:I

    const v1, 0x7f0a0024

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_MARGIN:I

    const v1, 0x7f0a0311

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->NEW_BADGE_ICON_OFFSET:I

    const v1, 0x7f0a035a

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->NEW_BADGE_ICON_WIDTH:I

    const v1, 0x7f0a035b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->NEW_BADGE_TEXT_SIZE:I

    const v1, 0x7f0a0301

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_SCROLL_MARGIN:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_HEIGHT:I

    const v1, 0x7f0a02ff

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_BUTTON_WIDTH:I

    const v1, 0x7f0a0300

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_LIMIT_SPACING:F

    const v1, 0x7f0a0316

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    const v1, 0x7f0a0317

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_PORTRAIT_OFFSET_Y:I

    const v1, 0x7f0a0313

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_LANDSCAPE_OFFSET_Y:I

    const v1, 0x7f0a0312

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_HEIGHT:I

    const v1, 0x7f0a0318

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_SIZE:I

    const v1, 0x7f0a0314

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_LEFT_MARGIN:I

    const v1, 0x7f0a0304

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    const v1, 0x7f0a0303

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_SIDE_MARGIN:I

    const v1, 0x7f0a0305

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_LEFT_MARGIN:I

    new-instance v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    new-instance v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$BeautyCategoryMenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    new-instance v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryAdapter:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyItemList:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragDropItemList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyDragDropItemList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousResourceList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousBeautyResourceList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentMode:I

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_EFFECT:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsDownloadEffectSupported:Z

    new-instance v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGestureEventListener:Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackKeyPressed:Z

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNormalModeDrag:Z

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsNeedShowBaseMenu:Z

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsNeedToSetScreenId:Z

    new-instance v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$2;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ExternalBasicEffectResourceData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/resourcedata/ExternalBasicEffectResourceData;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    new-instance v1, Lcom/sec/android/app/camera/resourcedata/ExternalBeautyEffectResourceData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/resourcedata/ExternalBeautyEffectResourceData;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyCategoryResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    sget-object v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceListLock:Ljava/lang/Object;

    monitor-enter v2

    const/16 v25, 0x0

    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    move/from16 v0, v25

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceListLock:Ljava/lang/Object;

    monitor-enter v2

    const/16 v25, 0x0

    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyCategoryResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    move/from16 v0, v25

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyCategoryResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DOWNLOAD_EFFECT:Z

    if-eqz v1, :cond_3

    new-instance v1, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    int-to-float v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    int-to-float v6, v6

    const v7, 0x7f020202

    const v8, 0x7f020203

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_SIDE_MARGIN:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_SIDE_MARGIN:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_SIDE_MARGIN:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    const v2, 0x7f09002d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    const/16 v2, 0x232a

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v1

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachImageMode()Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsDownloadEffectSupported:Z

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsDownloadEffectSupported:Z

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->NEW_BADGE_ICON_OFFSET:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->NEW_BADGE_ICON_WIDTH:I

    sub-int v26, v1, v2

    new-instance v1, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->NEW_BADGE_ICON_WIDTH:I

    int-to-float v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->NEW_BADGE_ICON_WIDTH:I

    int-to-float v6, v6

    const-string v7, "N"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->NEW_BADGE_TEXT_SIZE:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->BUTTON_FONT_COLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    sub-int/2addr v3, v4

    add-int v3, v3, v26

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_SIDE_MARGIN:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->NEW_BADGE_ICON_OFFSET:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->NEW_BADGE_ICON_OFFSET:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_SIDE_MARGIN:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    add-int/2addr v4, v6

    sub-int v4, v4, v26

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    add-int/2addr v3, v4

    sub-int v3, v3, v26

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_SIDE_MARGIN:I

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->NEW_BADGE_ICON_OFFSET:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const v2, 0x7f020286

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setNinePatchBackground(I)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090165

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_TEXT_SIZE:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_RIGHT_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float v5, v1, v2

    new-instance v1, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_HEIGHT:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_TEXT_SIZE:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->BUTTON_FONT_COLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    const/16 v2, 0x232e

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTag(I)V

    new-instance v8, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_HEIGHT:I

    int-to-float v13, v1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v12, v5

    invoke-direct/range {v8 .. v17}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/16 v2, 0x232e

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_STANDARD_UPPER_LINE:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_LEFT_MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_UPPER_MARGIN:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_MARGIN:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sub-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_RIGHT_MARGIN:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_UPPER_MARGIN:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_MARGIN:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090163

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_TEXT_SIZE:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v14, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_RIGHT_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float v12, v1, v2

    new-instance v8, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_HEIGHT:I

    int-to-float v13, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_TEXT_SIZE:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float v15, v1, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->BUTTON_FONT_COLOR:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    const/16 v2, 0x232e

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTag(I)V

    new-instance v15, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BUTTON_HEIGHT:I

    int-to-float v0, v1

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v19, v12

    invoke-direct/range {v15 .. v24}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/16 v2, 0x232e

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_STANDARD_UPPER_LINE:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_LEFT_MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_UPPER_MARGIN:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_MARGIN:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_UPPER_MARGIN:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_UPPER_MARGIN:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_MARGIN:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    :goto_4
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v15, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_WIDTH:I

    int-to-float v0, v1

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_WIDTH:I

    int-to-float v0, v1

    move/from16 v20, v0

    const v21, 0x7f020284

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_MARGIN:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_WIDTH:I

    sub-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_MARGIN:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_WIDTH:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_MARGIN:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0901d3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    new-instance v15, Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    int-to-float v0, v1

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v0, v1

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_BUTTON_WIDTH:I

    int-to-float v0, v1

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    invoke-direct/range {v15 .. v24}, Lcom/samsung/android/glview/GLGridList;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFFI)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryAdapter:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$CategoryMenuAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLGridList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    new-instance v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$3;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLGridList;->setScrollListener(Lcom/samsung/android/glview/GLAbsList$ScrollListener;)V

    new-instance v15, Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_WIDTH:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v0, v1

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v0, v1

    move/from16 v20, v0

    const v1, 0x7f0d0018

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v21

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x1

    invoke-direct/range {v15 .. v23}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_BOTTOM_AREA_WIDTH:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_e

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    :goto_6
    new-instance v15, Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    int-to-float v0, v1

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v0, v1

    move/from16 v20, v0

    const v1, 0x7f0d0017

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v21

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x1

    invoke-direct/range {v15 .. v23}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryBackground:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_BOTTOM_AREA_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_BOTTOM_AREA_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    :cond_6
    :goto_7
    new-instance v15, Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_BOTTOM_AREA_WIDTH:I

    int-to-float v0, v1

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v0, v1

    move/from16 v20, v0

    const v1, 0x7f0d0016

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v21

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x1

    invoke-direct/range {v15 .. v23}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_BOTTOM_AREA_WIDTH:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_BOTTOM_AREA_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_11

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    :goto_8
    new-instance v15, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    int-to-float v0, v1

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_WIDTH:I

    int-to-float v0, v1

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v0, v1

    move/from16 v20, v0

    invoke-direct/range {v15 .. v20}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_BOTTOM_AREA_WIDTH:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    new-instance v15, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_POS_X:I

    int-to-float v0, v1

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_POS_Y:I

    int-to-float v0, v1

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    int-to-float v0, v1

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v0, v1

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I

    int-to-float v0, v1

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_LINE_THICKNESS:I

    int-to-float v0, v1

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_LINE_THICKNESS:I

    int-to-float v0, v1

    move/from16 v23, v0

    const/16 v24, 0x2

    invoke-direct/range {v15 .. v24}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFFI)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setOverScrollEffect(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const v2, 0x7f020287

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setScrollBarResource(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setScrollBarAlpha(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setScrollBarAutoHide(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setScrollListener(Lcom/samsung/android/glview/GLAbsList$ScrollListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setForcedClipping(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setVisibility(I)V

    new-instance v15, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_POS_X:I

    int-to-float v0, v1

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_POS_Y:I

    int-to-float v0, v1

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    int-to-float v0, v1

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v0, v1

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I

    int-to-float v0, v1

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_LINE_THICKNESS:I

    int-to-float v0, v1

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_LINE_THICKNESS:I

    int-to-float v0, v1

    move/from16 v23, v0

    const/16 v24, 0x2

    invoke-direct/range {v15 .. v24}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFFI)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setOverScrollEffect(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const v2, 0x7f020287

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setScrollBarResource(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setScrollBarAlpha(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setScrollBarAutoHide(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setScrollListener(Lcom/samsung/android/glview/GLAbsList$ScrollListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setForcedClipping(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->makeStickerMenu()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryBackground:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsDownloadEffectSupported:Z

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const v4, 0x7f0b000c

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    new-instance v6, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v6}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v1, v2, v3, v4, v6}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mShowAnimation_0:Landroid/view/animation/Animation;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const v4, 0x7f0b000c

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    new-instance v6, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v6}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v1, v2, v3, v4, v6}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mShowAnimation_90:Landroid/view/animation/Animation;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f0b000c

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    new-instance v6, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v6}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v1, v2, v3, v4, v6}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mShowAnimation_180:Landroid/view/animation/Animation;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const v4, 0x7f0b000c

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v4

    new-instance v6, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v6}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v1, v2, v3, v4, v6}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mShowAnimation_270:Landroid/view/animation/Animation;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mHideAnimation_0:Landroid/view/animation/Animation;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mHideAnimation_90:Landroid/view/animation/Animation;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mHideAnimation_180:Landroid/view/animation/Animation;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mHideAnimation_270:Landroid/view/animation/Animation;

    new-instance v1, Lcom/sec/android/app/camera/provider/CameraGestureManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/provider/CameraGestureManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    new-instance v1, Lcom/sec/android/app/camera/provider/CameraGestureManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/provider/CameraGestureManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0xbe

    move-object/from16 v0, p0

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0x232c

    move-object/from16 v0, p0

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_9
    return-void

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_STANDARD_UPPER_LINE:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_LEFT_MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    sub-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_RIGHT_MARGIN:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_RIGHT_MARGIN:I

    int-to-float v4, v4

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_STANDARD_UPPER_LINE:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_EDIT_BUTTON_LEFT_MARGIN:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_UPPER_MARGIN:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sub-float/2addr v4, v12

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_RIGHT_MARGIN:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_UPPER_MARGIN:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_UPPER_MARGIN:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DONE_BUTTON_RIGHT_MARGIN:I

    int-to-float v4, v4

    add-float/2addr v4, v12

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    goto/16 :goto_4

    :cond_d
    new-instance v15, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_WIDTH:I

    int-to-float v0, v1

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_BACK_ICON_WIDTH:I

    int-to-float v0, v1

    move/from16 v20, v0

    const v21, 0x7f020283

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v15 .. v24}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x3

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    goto/16 :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    goto/16 :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    goto/16 :goto_7

    :cond_11
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    goto/16 :goto_8

    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    goto/16 :goto_8
.end method

.method static synthetic access$1000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceListLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/samsung/android/glview/GLView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->refreshNextFocus(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyLastBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyLastBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyFirstBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyFirstBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyDragDropItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_BUTTON_WIDTH:I

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/samsung/android/glview/GLGridList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsNeedShowBaseMenu:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsNeedToSetScreenId:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->uninstallStickerPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceListLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mLastBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mLastBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragDropItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$3600(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getCategoryItemIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateCategoryLayout(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragHelpToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragHelpToast:Landroid/widget/Toast;

    return-object p1
.end method

.method private cancelEditMode()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->changeMode(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->restoreCurrentOrder()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->invalidate()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->invalidate()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private changeMode(I)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p1, v7, :cond_6

    iput v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentMode:I

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLGridList;

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-virtual {v3, v1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/StickerItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/StickerItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->setDeleteButtonVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->setDeleteButtonVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v5, v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->getCommandId()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->setDeleteButtonVisibility(I)V

    :cond_1
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->setDim(Z)V

    goto :goto_4

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hidePageNavigators()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->isFilterCategorySelected()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideDragHelpToast()V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$6;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$6;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v4, "503"

    invoke-static {v4}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    :goto_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->savePreviousOrder()V

    :cond_4
    :goto_6
    return-void

    :cond_5
    const-string v4, "502"

    invoke-static {v4}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    if-nez p1, :cond_4

    iput v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentMode:I

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLGridList;

    if-eqz v3, :cond_7

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v4

    if-ge v1, v4, :cond_7

    invoke-virtual {v3, v1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/StickerItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/StickerItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :pswitch_2
    const/4 v1, 0x0

    :goto_8
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    invoke-virtual {v2, v8}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->setDeleteButtonVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :pswitch_3
    const/4 v1, 0x0

    :goto_9
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    invoke-virtual {v2, v8}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->setDeleteButtonVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_7
    const/4 v1, 0x0

    :goto_a
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v4

    if-ge v1, v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v5, v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->getCommandId()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v5

    if-ne v4, v5, :cond_9

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->setDeleteButtonVisibility(I)V

    :cond_8
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_9
    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->setDim(Z)V

    goto :goto_b

    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showPageNavigators()V

    const-string v4, "501"

    invoke-static {v4}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e78
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getCategoryItemIndex()I
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v3

    if-ne v2, v3, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getCategoryItemSpacing(I)F
    .locals 3

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_HEIGHT:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_BUTTON_WIDTH:I

    mul-int/2addr v2, p1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-int/lit8 v2, p1, 0x1

    int-to-float v2, v2

    div-float v0, v1, v2

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_LIMIT_SPACING:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_LIMIT_SPACING:F

    :cond_0
    return v0
.end method

.method private getCurrentSelectedIndex()I
    .locals 6

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLGridList;

    if-eqz v3, :cond_4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-virtual {v3, v1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/StickerItem;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/StickerItem;->getSelected()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    :goto_1
    return v1

    :pswitch_0
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getSize()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getSelected()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_1
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getSize()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getSelected()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hideDragHelpToast()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->isShowingDragHelpToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragHelpToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragHelpToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragHelpToast:Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method private hideRemoveEffectButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideStickerSoundMuteButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private isFilterCategorySelected()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isOrderChanged()Z
    .locals 5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    :pswitch_0
    sget-object v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceListLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    :goto_2
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    if-eq v4, v1, :cond_0

    monitor-exit v3

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_1
    sget-object v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceListLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    :goto_3
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousBeautyResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    if-eq v4, v1, :cond_2

    monitor-exit v3

    move v1, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isShowingDragHelpToast()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragHelpToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragHelpToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragHelpToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeStickerMenu()V
    .locals 15

    const/4 v14, 0x2

    const-string v1, "EffectThumbnailListMenu"

    const-string v2, "makeStickerMenu"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "EffectThumbnailListMenu"

    const-string v2, "return because Sticker List is not empty"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v11, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-ge v11, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1, v11}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v2, 0x1e78

    if-eq v1, v2, :cond_2

    invoke-virtual {v12}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    const/16 v2, 0x1e79

    if-ne v1, v2, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {v12}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerPackage(I)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    move-result-object v13

    new-instance v0, Lcom/samsung/android/glview/GLGridList;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_ITEM_WIDTH:I

    int-to-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_5

    move v9, v14

    :goto_2
    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLGridList;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFFI)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setOverScrollEffect(Z)V

    const v1, 0x7f020287

    const v2, 0x7f0d004c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->setScrollBarResource(II)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setScrollBarAutoHide(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    if-ne v1, v14, :cond_6

    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_HORIZONTAL_SPACING:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_VERTICAL_SPACING:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->setSize(FF)V

    new-instance v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v13, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_LEFT_MARGIN:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_TOP_MARGIN:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    :goto_3
    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLGridList;->setScrollListener(Lcom/samsung/android/glview/GLAbsList$ScrollListener;)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLGridList;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v10

    const-string v1, "EffectThumbnailListMenu"

    const-string v2, "PlugInStickerStorage isn\'t ready yet."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    const/4 v9, 0x5

    goto :goto_2

    :cond_6
    :try_start_1
    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_VERTICAL_SPACING:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_HORIZONTAL_SPACING:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->setSize(FF)V

    new-instance v1, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v13, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$StickerListAdapter;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;)V

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_LEFT_MARGIN:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_TOP_MARGIN:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private refreshNextFocus(Lcom/samsung/android/glview/GLView;)V
    .locals 3

    move-object v0, p1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->resetNextFocusId()V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->resetNextFocusId()V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->resetNextFocusId()V

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private restoreCurrentOrder()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceListLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousResourceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_1
    sget-object v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceListLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousBeautyResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousBeautyResourceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private saveCurrentOrder()V
    .locals 11

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    if-nez v1, :cond_3

    const-string v8, "EffectThumbnailListMenu"

    const-string v9, "Cannot find the first item in the list. Return."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :pswitch_0
    sget-object v9, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceListLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getPrevious()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v9

    if-nez v9, :cond_1

    move-object v1, v3

    goto :goto_0

    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    :pswitch_1
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getPrevious()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v9

    if-nez v9, :cond_2

    move-object v1, v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getCommandId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getNext()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    :goto_2
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getCommandId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getNext()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v8

    packed-switch v8, :pswitch_data_1

    goto :goto_1

    :pswitch_2
    sget-object v9, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceListLock:Ljava/lang/Object;

    monitor-enter v9

    const/4 v2, 0x0

    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_7

    const/4 v5, 0x1

    :goto_4
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v8

    if-ne v10, v8, :cond_6

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_8

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    monitor-exit v9

    goto/16 :goto_1

    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    :pswitch_3
    sget-object v9, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceListLock:Ljava/lang/Object;

    monitor-enter v9

    const/4 v2, 0x0

    :goto_6
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_b

    const/4 v5, 0x0

    :goto_7
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_9

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v8

    if-ne v10, v8, :cond_a

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_b
    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_c

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_c
    monitor-exit v9

    goto/16 :goto_1

    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v8

    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e78
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private savePreviousOrder()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceListLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousResourceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_1
    sget-object v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceListLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousBeautyResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousBeautyResourceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentBeautyCategoryResourceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private saveToDB()V
    .locals 9

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    if-nez v1, :cond_8

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getPrevious()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v8

    if-nez v8, :cond_2

    move-object v1, v3

    :cond_3
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getNext()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getCommandId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getNext()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    :goto_2
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousResourceList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousResourceList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_1
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyDragDropItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getPrevious()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v8

    if-nez v8, :cond_5

    move-object v1, v3

    :cond_6
    move-object v4, v1

    :goto_3
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->getCommandId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getNext()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_4
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousBeautyResourceList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousBeautyResourceList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v7}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v7

    invoke-virtual {v7, v0, v6}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->saveOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setAnimation()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mShowAnimation_0:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mHideAnimation_0:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mShowAnimation_90:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mHideAnimation_90:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mShowAnimation_180:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mHideAnimation_180:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mShowAnimation_270:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mHideAnimation_270:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private showRemoveEffectButton()V
    .locals 15

    const v0, 0x7f090201

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_SIZE:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectText:Lcom/samsung/android/glview/GLText;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_LEFT_MARGIN:I

    int-to-float v2, v2

    const/4 v3, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f090201

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_SIZE:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->BUTTON_FONT_COLOR:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectText:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x1

    const v2, 0x4efe1600

    const v3, 0x7f0d0031

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    if-nez v0, :cond_1

    new-instance v5, Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_LEFT_MARGIN:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float v9, v4, v0

    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_HEIGHT:I

    int-to-float v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_PORTRAIT_OFFSET_Y:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_LEFT_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_LANDSCAPE_OFFSET_Y:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_HEIGHT:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_LEFT_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_LANDSCAPE_OFFSET_Y:I

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_HEIGHT:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f090201

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setNinePatchBackground(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method

.method private showStickerSoundMuteButton()V
    .locals 9

    const v7, 0x7f02027d

    const v6, 0x7f02027a

    const/4 v2, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f090235

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_SIDE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v8, v1, v2}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_NO_EFFECT_BUTTON_OFFSET_X:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_SIDE_MARGIN:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_DOWNLOAD_BUTTON_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    invoke-virtual {v0, v6, v7, v8, v8}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f09004c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setSubTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void

    :cond_1
    const v6, 0x7f02027b

    goto :goto_0

    :cond_2
    const v7, 0x7f02027c

    goto :goto_1

    :cond_3
    const v0, 0x7f09004b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private startAnimationForChangingCategory(ILcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;I)V
    .locals 7

    const v4, 0x7f0b0005

    const v6, 0x7f0b0004

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p3, v5}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    new-instance v4, Lcom/samsung/android/view/animation/SineOut60;

    invoke-direct {v4}, Lcom/samsung/android/view/animation/SineOut60;-><init>()V

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$7;

    invoke-direct {v3, p0, p2, p3, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$7;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLGridList;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLGridList;->startAnimation()V

    invoke-virtual {p2, v5}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v3

    if-le v3, p1, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    new-instance v4, Lcom/samsung/android/view/animation/SineOut60;

    invoke-direct {v4}, Lcom/samsung/android/view/animation/SineOut60;-><init>()V

    invoke-static {p3, v2, v5, v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$8;

    invoke-direct {v3, p0, p2, p3, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$8;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;Lcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p2, v1}, Lcom/samsung/android/glview/GLGridList;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLGridList;->startAnimation()V

    invoke-virtual {p2, v5}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private uninstallStickerPackage(Ljava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.RETURN_RESULT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x7ed

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "EffectThumbnailListMenu"

    const-string v3, "uninstallStickerPackage - activity not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateCategoryLayout(II)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    const-string v3, "EffectThumbnailListMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCategoryLayout : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", animationType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentMode:I

    if-ne v3, v8, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v3, v7, v6}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setVisibility(IZ)V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->cancelAnimation()V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v3, v7, v6}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setVisibility(IZ)V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->cancelAnimation()V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2, v7, v6}, Lcom/samsung/android/glview/GLGridList;->setVisibility(IZ)V

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->cancelAnimation()V

    goto :goto_1

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateStickerCategoryLayout(II)V

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLGridList;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0, p1, v3, v4, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->startAnimationForChangingCategory(ILcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;I)V

    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isFilterLoaded()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    invoke-static {v6}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->setEffectCategory(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEffectCategory(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getCurrentSelectedIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->scrollToVisible(Lcom/samsung/android/glview/GLView;)V

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->showScrollBar()V

    :cond_4
    iget-boolean v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsDownloadEffectSupported:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isNewFilterUploaded()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0, p1, v3, v4, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->startAnimationForChangingCategory(ILcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;I)V

    goto :goto_2

    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0, p1, v3, v4, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->startAnimationForChangingCategory(ILcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;I)V

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_3

    :pswitch_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v3

    packed-switch v3, :pswitch_data_2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLGridList;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0, p1, v3, v4, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->startAnimationForChangingCategory(ILcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;I)V

    :cond_7
    :goto_4
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isFilterLoaded()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    invoke-static {v8}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->setEffectCategory(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEffectCategory(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getCurrentSelectedIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->scrollToVisible(Lcom/samsung/android/glview/GLView;)V

    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->showScrollBar()V

    :cond_9
    iget-boolean v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsDownloadEffectSupported:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isNewFilterUploaded()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    :cond_a
    :goto_5
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0, p1, v3, v4, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->startAnimationForChangingCategory(ILcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;I)V

    goto :goto_4

    :pswitch_5
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0, p1, v3, v4, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->startAnimationForChangingCategory(ILcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;I)V

    goto :goto_4

    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e78
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1e78
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateStickerCategoryLayout(II)V
    .locals 11

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/glview/GLGridList;

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/glview/GLGridList;

    invoke-direct {p0, p1, v6, v7, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->startAnimationForChangingCategory(ILcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;I)V

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEffectCategory(I)V

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLGridList;

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getCurrentSelectedIndex()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/StickerItem;

    if-eqz v2, :cond_0

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLGridList;->scrollToVisible(Lcom/samsung/android/glview/GLView;)V

    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLGridList;->showScrollBar()V

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerPackage(I)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    move-result-object v4

    iget-object v6, v4, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerType(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v7, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->WATERMARK_NETWORK_PERMISSION_DLG:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-interface {v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    iget-boolean v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsDownloadEffectSupported:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;

    if-eqz v0, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/EffectStickerCategoryItem;->isDownloaded()Z

    move-result v6

    if-nez v6, :cond_6

    move v6, v8

    :goto_2
    invoke-virtual {v7, v6}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    :cond_3
    return-void

    :pswitch_0
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/glview/GLGridList;

    invoke-direct {p0, p1, v7, v6, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->startAnimationForChangingCategory(ILcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;I)V

    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/glview/GLGridList;

    invoke-direct {p0, p1, v7, v6, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->startAnimationForChangingCategory(ILcom/samsung/android/glview/GLGridList;Lcom/samsung/android/glview/GLGridList;I)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-boolean v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsDownloadEffectSupported:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    invoke-static {v5}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->isNewStickerUploaded(I)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v6, "EffectThumbnailListMenu"

    const-string v7, "PlugInStickerStorage isn\'t ready yet."

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    :try_start_2
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_6
    move v6, v9

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->unregisterGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGestureEventListener:Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->unregisterGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0xbe

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x232c

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    return-void
.end method

.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "pref_sticker_rect_position"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showSticker(Z)V

    :cond_2
    const-string v2, "5004"

    invoke-static {v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideMenu()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onCameraSettingChanged(II)V
    .locals 5

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateRemoveEffectButton()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateRemoveEffectButton()V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v1

    const/16 v2, 0x232d

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRandomStickerId()I

    move-result v0

    :goto_1
    const/16 v1, 0x2710

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->isSoundFaceARSticker(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->showStickerSoundMuteButton()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideStickerSoundMuteButton()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideStickerSoundMuteButton()V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v1

    if-nez v1, :cond_4

    const v1, 0x7f02027a

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v2

    if-nez v2, :cond_5

    const v2, 0x7f02027d

    :goto_3
    invoke-virtual {v3, v1, v2, v4, v4}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v1

    if-nez v1, :cond_6

    const v1, 0x7f09004c

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLButton;->setSubTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const v1, 0x7f02027b

    goto :goto_2

    :cond_5
    const v2, 0x7f02027c

    goto :goto_3

    :cond_6
    const v1, 0x7f09004b

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xbe -> :sswitch_1
        0x232c -> :sswitch_2
    .end sparse-switch
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v6, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDownloadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iput-boolean v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsNeedToSetScreenId:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->isFilterCategorySelected()Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x232a

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLText;->isVisible()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->syncUploadedFilterListDBWithServer(Landroid/content/Context;)V

    :cond_3
    const-string v5, "5001"

    invoke-static {v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    const-string v5, "G014"

    const v6, 0x7f09002d

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_4
    const/16 v6, 0x232b

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLText;->isVisible()I

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerPackage(I)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v3, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerType(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/plugin/PlugInStickerLoader;->syncUploadedStickerListDBWithServer(Landroid/content/Context;I)V

    :cond_5
    const-string v5, "5031"

    invoke-static {v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v5, "5002"

    invoke-static {v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->changeMode(I)V

    const-string v5, "G014"

    const v6, 0x7f090165

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->isFilterCategorySelected()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "5051"

    invoke-static {v6}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->changeMode(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->saveToDB()V

    goto/16 :goto_0

    :cond_8
    const-string v6, "5041"

    invoke-static {v6}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->cancelEditMode()V

    goto/16 :goto_0

    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mRemoveEffectButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onSingleEffectMenuSelect(I)Z

    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideRemoveEffectButton()V

    const-string v5, "5003"

    invoke-static {v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v5

    const/16 v6, 0x2710

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CommandInterface;->onStickerMenuSelect(I)Z

    goto :goto_2

    :cond_c
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v7, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v7

    if-nez v7, :cond_e

    :goto_3
    invoke-interface {v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setStickerSoundMute(I)V

    const-string v4, "5054"

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerSoundMute()I

    move-result v6

    if-nez v6, :cond_f

    const-wide/16 v6, 0x1

    :goto_4
    invoke-static {v4, v6, v7}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    :cond_d
    move v4, v5

    goto/16 :goto_0

    :cond_e
    move v4, v5

    goto :goto_3

    :cond_f
    const-wide/16 v6, 0x0

    goto :goto_4
.end method

.method public onDrag(Lcom/samsung/android/glview/GLView;FFFF)V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x40400000    # 3.0f

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    cmpl-float v2, v1, v6

    if-nez v2, :cond_9

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_HEIGHT:I

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getBottom()F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    cmpl-float v2, p3, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getBottom()F

    move-result v2

    cmpg-float v2, p3, v2

    if-gez v2, :cond_2

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    neg-int v2, v2

    int-to-float v1, v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    cmpg-float v2, p3, v2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    int-to-float v1, v2

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getBottom()F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    cmpl-float v2, p3, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getBottom()F

    move-result v2

    cmpg-float v2, p3, v2

    if-gez v2, :cond_3

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    neg-int v2, v2

    int-to-float v1, v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    cmpg-float v2, p3, v2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    int-to-float v1, v2

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_HEIGHT:I

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getBottom()F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    cmpl-float v2, p3, v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getBottom()F

    move-result v2

    cmpg-float v2, p3, v2

    if-gez v2, :cond_4

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    int-to-float v1, v2

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    cmpg-float v2, p3, v2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    neg-int v2, v2

    int-to-float v1, v2

    goto/16 :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getBottom()F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    cmpl-float v2, p3, v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getBottom()F

    move-result v2

    cmpg-float v2, p3, v2

    if-gez v2, :cond_5

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    int-to-float v1, v2

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    cmpg-float v2, p3, v2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    neg-int v2, v2

    int-to-float v1, v2

    goto/16 :goto_0

    :pswitch_6
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v2

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getBottom()F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-lez v2, :cond_6

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_6

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    int-to-float v1, v2

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    neg-int v2, v2

    int-to-float v1, v2

    goto/16 :goto_0

    :pswitch_8
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getBottom()F

    move-result v2

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-lez v2, :cond_7

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_7

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    int-to-float v1, v2

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getTop()F

    move-result v2

    int-to-float v3, v0

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    neg-int v2, v2

    int-to-float v1, v2

    goto/16 :goto_0

    :pswitch_9
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_ITEM_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    add-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x2

    div-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_8

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->SCREEN_WIDTH:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_8

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    neg-int v2, v2

    int-to-float v1, v2

    goto/16 :goto_0

    :cond_8
    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_POS_X:I

    mul-int/lit8 v3, v0, 0x2

    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    cmpl-float v2, p2, v6

    if-lez v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->LIST_MENU_TRANSLATE_OFFSET:I

    int-to-float v1, v2

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v2

    packed-switch v2, :pswitch_data_4

    goto/16 :goto_1

    :pswitch_a
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2, v6, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->scrollList(FF)Z

    goto/16 :goto_1

    :pswitch_b
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v2, v6, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->scrollList(FF)Z

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e78
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1e78
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1e78
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1e78
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public onDragEnd(Lcom/samsung/android/glview/GLView;FF)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->saveCurrentOrder()V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNormalModeDrag:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->isOrderChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->changeMode(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->saveToDB()V

    :cond_0
    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNormalModeDrag:Z

    :cond_1
    return-void
.end method

.method public onDragStart(Lcom/samsung/android/glview/GLView;FF)V
    .locals 3

    const/4 v2, 0x1

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentMode:I

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNormalModeDrag:Z

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->changeMode(I)V

    const-string v1, "G013"

    const-string v2, "Longpress"

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    :goto_0
    const-string v1, "5052"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNormalModeDrag:Z

    const-string v1, "G013"

    const-string v2, "Edit"

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method public onFlingDirection(II)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    :cond_0
    if-nez p1, :cond_3

    const/4 p1, 0x1

    :cond_1
    :goto_0
    if-nez p1, :cond_4

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentMode:I

    if-eq v1, v0, :cond_4

    const-string v1, "5005"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideMenu()V

    :cond_2
    :goto_1
    return v0

    :cond_3
    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onHide()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "EffectThumbnailListMenu"

    const-string v1, "onHide"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->unregisterGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGestureEventListener:Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->unregisterGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideDragHelpToast()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startVoiceRecognizer()V

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentMode:I

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->cancelEditMode()V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsNeedToSetScreenId:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousScreenId:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_WATERMARK:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V

    :cond_3
    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsNeedShowBaseMenu:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    const/16 v1, 0x400

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showEffectEditButton()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->updateAutoFilterPinButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerSoundMuteButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isVisible()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showStickerSoundMuteButton()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideEffectEditButton()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideEffectEditButton()V

    goto :goto_0
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :sswitch_0
    return v0

    :sswitch_1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackKeyPressed:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackKeyPressed:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentMode:I

    if-ne v1, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->cancelEditMode()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideMenu()V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackKeyPressed:Z

    goto :goto_0

    :sswitch_2
    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBackKeyPressed:Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x52 -> :sswitch_2
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOrientationChanged(I)V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isFilterLoaded()Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    if-eq v4, p1, :cond_0

    iput p1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setAnimation()V

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLGridList;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v11}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    :cond_1
    :goto_0
    iget v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    if-ne v4, v9, :cond_4

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLGridList;->setScrollOrientation(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getCategoryItemSpacing(I)F

    move-result v5

    invoke-virtual {v4, v10, v5, v7}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLGridList;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_POS_X:I

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v5, v10}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/16 v5, 0x8

    if-le v4, v5, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_SCROLL_MARGIN:I

    int-to-float v5, v5

    invoke-virtual {v4, v5, v8}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_SCROLL_MARGIN:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLGridList;->updateEndOffset(F)V

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v9, v7}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setNumColumns(IZ)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6, v8}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setSize(FFZ)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v9, v7}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setNumColumns(IZ)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6, v8}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setSize(FFZ)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLGridList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_HORIZONTAL_SPACING:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_VERTICAL_SPACING:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    invoke-virtual {v3, v9, v7}, Lcom/samsung/android/glview/GLGridList;->setNumColumns(IZ)V

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_HEIGHT:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6, v8}, Lcom/samsung/android/glview/GLGridList;->setSize(FFZ)V

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_LEFT_MARGIN:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LANDSCAPE_LIST_TOP_MARGIN:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    goto :goto_2

    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v4, v10, v9}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_WIDTH:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v4, v9}, Lcom/samsung/android/glview/GLGridList;->setScrollOrientation(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getCategoryItemSpacing(I)F

    move-result v5

    invoke-virtual {v4, v5, v10, v7}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_AREA_WIDTH:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLGridList;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_POS_X:I

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v10, v5}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/16 v5, 0x8

    if-le v4, v5, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_SCROLL_MARGIN:I

    int-to-float v5, v5

    invoke-virtual {v4, v5, v8}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_SCROLL_MARGIN:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLGridList;->updateEndOffset(F)V

    :goto_3
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v11, v7}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setNumColumns(IZ)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6, v8}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setSize(FFZ)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v11, v7}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setNumColumns(IZ)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_WIDTH:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6, v8}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setSize(FFZ)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLGridList;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_VERTICAL_SPACING:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_LIST_HORIZONTAL_SPACING:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    const/4 v5, 0x5

    invoke-virtual {v3, v5, v7}, Lcom/samsung/android/glview/GLGridList;->setNumColumns(IZ)V

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_HEIGHT:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6, v8}, Lcom/samsung/android/glview/GLGridList;->setSize(FFZ)V

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_LEFT_MARGIN:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->STICKER_PORTRAIT_LIST_TOP_MARGIN:I

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    goto :goto_4

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v4, v10, v9}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLGridList;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLGridList;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getCurrentSelectedIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/StickerItem;

    if-eqz v2, :cond_7

    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLGridList;->scrollToVisible(Lcom/samsung/android/glview/GLView;)V

    :cond_7
    :goto_5
    iget v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    packed-switch v4, :pswitch_data_2

    :cond_8
    :goto_6
    return-void

    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getCurrentSelectedIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->scrollToVisible(Lcom/samsung/android/glview/GLView;)V

    goto :goto_5

    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getCurrentSelectedIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->scrollToVisible(Lcom/samsung/android/glview/GLView;)V

    goto :goto_5

    :pswitch_4
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v4, v7}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v4, v7}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_BOTTOM_AREA_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v4, v7}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    goto :goto_6

    :pswitch_5
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_BOTTOM_AREA_WIDTH:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    goto :goto_6

    :pswitch_6
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v4, v9}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v4, v9}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    iget v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_BOTTOM_AREA_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_MENU_GROUP_HEIGHT:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLRectangle;->setSize(FF)V

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEffectBottomBackground:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v4, v9}, Lcom/samsung/android/glview/GLRectangle;->setOrientation(I)V

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e78
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public onScrollDirection(II)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->onFlingDirection(II)Z

    move-result v0

    return v0
.end method

.method public onScrollEnd()V
    .locals 1

    const-string v0, "5012"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method

.method public onScrollStart()V
    .locals 0

    return-void
.end method

.method protected onShow()V
    .locals 7

    const v4, 0x7f0b000d

    const/4 v6, 0x0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsNeedToSetScreenId:Z

    invoke-static {}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->getSAScreenId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mPreviousScreenId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->registerGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGestureEventListener:Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->registerGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopVoiceRecognizer()V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getSecEffectThumbnailProcessor()Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->setFrontCamera(Z)V

    invoke-static {}, Lcom/sec/android/app/camera/widget/gl/GLSurfaceTexture;->getSecEffectThumbnailProcessor()Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isFilterLoaded()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$5;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)V

    invoke-virtual {v2, v3}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mOrientation:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v3

    if-eq v2, v3, :cond_8

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->onOrientationChanged(I)V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateCategoryLayout(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateRemoveEffectButton()V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v2

    if-ne v2, v5, :cond_b

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v2

    const/16 v3, 0x232d

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRandomStickerId()I

    move-result v1

    :goto_2
    const/16 v2, 0x2710

    if-eq v1, v2, :cond_2

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->isSoundFaceARSticker(I)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->showStickerSoundMuteButton()V

    :cond_2
    :goto_3
    iput-boolean v5, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsNeedShowBaseMenu:Z

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0900ca

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v6, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_3
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_WATERMARK:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isNetworkPermissionEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->getInstance()Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v4}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;->loadWatermarkText(Landroid/content/Context;Landroid/location/Location;)V

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerRectHandler(Z)V

    :cond_6
    const-string v2, "501"

    invoke-static {v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    return-void

    :cond_7
    const-string v2, "EffectThumbnailListMenu"

    const-string v3, "SecEffectThumbnailProcessor is already initialized, so pass"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v6}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto/16 :goto_1

    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v1

    goto/16 :goto_2

    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideStickerSoundMuteButton()V

    goto/16 :goto_3

    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideStickerSoundMuteButton()V

    goto/16 :goto_3
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getCurrentSelectedIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->requestFocus()Z

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->getCurrentSelectedIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->requestFocus()Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1e78
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 2

    instance-of v1, p1, Lcom/samsung/android/glview/GLGridList;

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->isAnimationFinished()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->resetDrag()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/EffectMenuDragDropBox;->getEffectItem()Lcom/sec/android/app/camera/widget/gl/EffectItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/EffectItem;->resetDrag()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mListMenuGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_2
    return v1

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_2
.end method

.method public refreshEffectListMenu(Z)V
    .locals 4

    const-string v1, "EffectThumbnailListMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshEffectListMenu : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->loadExternalFilters()Z

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLSurfaceView()Landroid/opengl/GLSurfaceView;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$4;-><init>(Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)V

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    sget-object v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceListLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ExternalBasicEffectResourceData;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/ExternalBasicEffectResourceData;->resetEffectResourceData()V

    sget-object v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceListLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCurrentResourceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->invalidate()V

    return-void

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public refreshStickerMenu()V
    .locals 3

    const-string v0, "EffectThumbnailListMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshStickerMenu, StickerList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mStickerListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->makeStickerMenu()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateCategoryLayout(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/EffectStickerCategoryResourceData;->refreshMenuResource()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_SCROLL_MARGIN:I

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    iget v1, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->EFFECT_CATEGORY_SCROLL_MARGIN:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLGridList;->updateEndOffset(F)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCategoryTabList:Lcom/samsung/android/glview/GLGridList;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    goto :goto_0
.end method

.method public resetFilterList()V
    .locals 2

    const-string v0, "EffectThumbnailListMenu"

    const-string v1, "resetFilterList"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->invalidate()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mBeautyList:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu$GLEffectThumbnailList;->invalidate()V

    :cond_1
    return-void
.end method

.method public updateCategoryLayout(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateCategoryLayout(II)V

    return-void
.end method

.method public updateNewBadgeButton()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    const-string v2, "EffectThumbnailListMenu"

    const-string v3, "updateNewBadgeButton"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mIsDownloadEffectSupported:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->isFilterCategorySelected()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isNewFilterUploaded()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectCategory()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerPackage(I)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;

    move-result-object v0

    iget-object v2, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerPackage;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const-string v2, "EffectThumbnailListMenu"

    const-string v3, "not support watermark download"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->isNewStickerUploaded(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateRemoveEffectButton()V
    .locals 4

    const-string v2, "EffectThumbnailListMenu"

    const-string v3, "updateRemoveEffectButton"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->getExternalEffectsTitle(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->showRemoveEffectButton()V

    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    const/16 v3, 0x400

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090114

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v2, "EffectThumbnailListMenu"

    const-string v3, "undefined effect"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v1, -0x1

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    const v1, 0x7f090168

    goto :goto_2

    :pswitch_1
    const v1, 0x7f090038

    goto :goto_2

    :pswitch_2
    const v1, 0x7f09022f

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->hideRemoveEffectButton()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
