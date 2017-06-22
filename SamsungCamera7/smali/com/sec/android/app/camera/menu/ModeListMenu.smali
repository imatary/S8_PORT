.class public Lcom/sec/android/app/camera/menu/ModeListMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "ModeListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLAbsList$ScrollListener;
.implements Lcom/samsung/android/glview/GLView$DragListener;
.implements Lcom/sec/android/app/camera/widget/gl/DragDropBox$DropListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;,
        Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;
    }
.end annotation


# static fields
.field private static final EDIT_MODE:I = 0x1

.field private static final NORMAL_MODE:I = 0x0

.field private static final SHORT_CUT_MODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ModeListMenu"


# instance fields
.field private final BUTTON_FONT_COLOR:I

.field private final BUTTON_TEXT_FONT_SIZE:F

.field private final BUTTON_TEXT_MARGIN:F

.field private final DOWNLOAD_BUTTON_SIZE:F

.field private final LANDSCAPE_LIST_HORIZONTAL_SPACING:F

.field private final LANDSCAPE_LIST_VERTICAL_SPACING:F

.field private final LIST_LANDSCAPE_BOTTOM_MARGIN:F

.field private final LIST_LANDSCAPE_TOP_MARGIN:F

.field private final LIST_LANDSCAPE_WIDTH:F

.field private final LIST_MENU_BOTTOM_MARGIN:F

.field private final LIST_MENU_TRANSLATE_OFFSET:F

.field private final LIST_PORTRAIT_TOP_MARGIN:F

.field private final LIST_SCROLL_MARGIN_BOTTOM:F

.field private final MENU_BAR_BUTTON_HEIGHT:F

.field private final MENU_BAR_GROUP_MARGIN:F

.field private final MODE_BACK_ICON_MARGIN:F

.field private final MODE_BACK_ICON_WIDTH:F

.field private final MODE_EDIT_AREA_MARK_WIDTH:F

.field private final MODE_MENU_COLS_WIDTH:F

.field private final MODE_MENU_ITEM_HEIGHT:F

.field private final MODE_MENU_ITEM_WIDTH:F

.field private final MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

.field private final MODE_MENU_PORTRAIT_NUM_OF_COLUMNS:I

.field private final MODE_TITLE_FONT_COLOR:I

.field private final MODE_TITLE_SELECTED_FONT_COLOR:I

.field private final MORE_BUTTON_LEFT_MARGIN:F

.field private final MORE_BUTTON_RIGHT_MARGIN:F

.field private final MORE_BUTTON_WIDTH:F

.field private final NEW_BADGE_ICON_OFFSET:I

.field private final NEW_BADGE_ICON_WIDTH:I

.field private final NEW_BADGE_TEXT_SIZE:I

.field private final OPTION_BUTTON_FONT_COLOR:I

.field private final OPTION_BUTTON_TEXT_FONT_SIZE:F

.field private final OPTION_BUTTON_TEXT_HEIGHT:F

.field private final OPTION_BUTTON_TEXT_MARGIN:F

.field private final OPTION_BUTTON_TEXT_MIN_HEIGHT:F

.field private final OPTION_GROUP_MARGIN:F

.field private final OPTION_MIN_WIDTH:F

.field private final PORTRAIT_LIST_HORIZONTAL_SPACING:F

.field private final PORTRAIT_LIST_VERTICAL_SPACING:F

.field private final SCREEN_HEIGHT:F

.field private final SCREEN_WIDTH:F

.field private mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

.field private final mBackButton:Lcom/samsung/android/glview/GLButton;

.field private mBackKeyPressed:Z

.field private mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

.field private mCurrentMode:I

.field private mCurrentModeOrderString:Ljava/lang/String;

.field private final mDoneButton:Lcom/samsung/android/glview/GLButton;

.field private final mDoneText:Lcom/samsung/android/glview/GLText;

.field private mDownLoadButton:Lcom/samsung/android/glview/GLButton;

.field private mDragHelpToast:Landroid/widget/Toast;

.field private mEditAreaMarkList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private final mEditButton:Lcom/samsung/android/glview/GLButton;

.field private mEditPossible:Z

.field private final mEditText:Lcom/samsung/android/glview/GLText;

.field private mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

.field private final mHideAnimation_0:Landroid/view/animation/Animation;

.field private final mHideAnimation_180:Landroid/view/animation/Animation;

.field private final mHideAnimation_270:Landroid/view/animation/Animation;

.field private final mHideAnimation_90:Landroid/view/animation/Animation;

.field private final mInfoButton:Lcom/samsung/android/glview/GLButton;

.field private final mInfoText:Lcom/samsung/android/glview/GLText;

.field private mInitialModeOrderString:Ljava/lang/String;

.field private mIsInfoMenuShowing:Z

.field private mIsNeedShowBaseMenu:Z

.field private mLastBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

.field private mList:Lcom/samsung/android/glview/GLGridList;

.field private final mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private final mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

.field private mModeIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMoreButton:Lcom/samsung/android/glview/GLButton;

.field private mNewBadge:Lcom/samsung/android/glview/GLText;

.field private mNormalModeDrag:Z

.field private final mOneTimeHideAnimation:Landroid/view/animation/Animation;

.field private final mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mOrientation:I

.field private mPreviousScreenId:Ljava/lang/String;

.field private mShortCutButton:Lcom/samsung/android/glview/GLButton;

.field private mShortCutCheckedList:Landroid/util/SparseBooleanArray;

.field private final mShortCutText:Lcom/samsung/android/glview/GLText;

.field private mShowAnimationListener:Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;

.field private final mShowAnimation_0:Landroid/view/animation/Animation;

.field private final mShowAnimation_180:Landroid/view/animation/Animation;

.field private final mShowAnimation_270:Landroid/view/animation/Animation;

.field private final mShowAnimation_90:Landroid/view/animation/Animation;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 53

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    int-to-float v10, v2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    int-to-float v11, v2

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-direct/range {v2 .. v14}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;FFFFLcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    const v2, 0x7f0a0158

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_HORIZONTAL_SPACING:F

    const v2, 0x7f0a0185

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_HORIZONTAL_SPACING:F

    const v2, 0x7f0a0159

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_VERTICAL_SPACING:F

    const v2, 0x7f0a0186

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_VERTICAL_SPACING:F

    const v2, 0x7f0a017d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_SCROLL_MARGIN_BOTTOM:F

    const v2, 0x7f0a002f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_PORTRAIT_TOP_MARGIN:F

    const v2, 0x7f0a002e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_WIDTH:F

    const v2, 0x7f0a002d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_TOP_MARGIN:F

    const v2, 0x7f0a002c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_BOTTOM_MARGIN:F

    const v2, 0x7f0a0035

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_WIDTH:F

    const v2, 0x7f0a0034

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_WIDTH:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_COLS_WIDTH:F

    const v2, 0x7f0b0033

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

    const v2, 0x7f0b0034

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_PORTRAIT_NUM_OF_COLUMNS:I

    const v2, 0x7f0d002c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_TITLE_FONT_COLOR:I

    const v2, 0x7f0d002e

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_TITLE_SELECTED_FONT_COLOR:I

    const v2, 0x7f0a0030

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    const v2, 0x7f0a002b

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_BOTTOM_MARGIN:F

    const v2, 0x7f0a0033

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_MARGIN:F

    const v2, 0x7f0a0355

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_FONT_SIZE:F

    const v2, 0x7f0d002c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_FONT_COLOR:I

    const v2, 0x7f0a003b

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    const v2, 0x7f0a003a

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_HEIGHT:F

    const v2, 0x7f0a003c

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MIN_HEIGHT:F

    const v2, 0x7f0a0357

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    const v2, 0x7f0d0029

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_FONT_COLOR:I

    const v2, 0x7f0a0038

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    const v2, 0x7f0a0039

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_MIN_WIDTH:F

    const v2, 0x7f0a0352

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_EDIT_AREA_MARK_WIDTH:F

    const v2, 0x7f0a016a

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    const v2, 0x7f0a0024

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    const v2, 0x7f0a0356

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_WIDTH:F

    const v2, 0x7f0a0036

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_LEFT_MARGIN:F

    const v2, 0x7f0a0037

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    const v2, 0x7f0a0351

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->DOWNLOAD_BUTTON_SIZE:F

    const v2, 0x7f0a0032

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    const v2, 0x7f0a0031

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    const v2, 0x7f0a0311

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_OFFSET:I

    const v2, 0x7f0a035a

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_WIDTH:I

    const v2, 0x7f0a035b

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_TEXT_SIZE:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mLastBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsInfoMenuShowing:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditPossible:Z

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutCheckedList:Landroid/util/SparseBooleanArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackKeyPressed:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInitialModeOrderString:Ljava/lang/String;

    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentModeOrderString:Ljava/lang/String;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsNeedShowBaseMenu:Z

    check-cast p6, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isAddToHomeIntentSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isDocomoUx(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isAFWMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isEasyMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v47, 0x1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0901d0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v50

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->DOWNLOAD_BUTTON_SIZE:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_LEFT_MARGIN:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_WIDTH:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    add-float v49, v2, v3

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_LEFT_MARGIN:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_WIDTH:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    add-float/2addr v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->DOWNLOAD_BUTTON_SIZE:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    const v8, 0x7f020145

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09002d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setButtonShapeVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_LEFT_MARGIN:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_WIDTH:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->DOWNLOAD_BUTTON_SIZE:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_OFFSET:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_OFFSET:I

    neg-int v5, v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_WIDTH:I

    int-to-float v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_WIDTH:I

    int-to-float v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0901d7

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_TEXT_SIZE:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_FONT_COLOR:I

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const v3, 0x7f020286

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setNinePatchBackground(I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setBypassTouch(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    const v8, 0x7f020285

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, v50

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setButtonShapeVisibility(Z)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sub-float v48, v2, v49

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isAFWMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090165

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-static {v8, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v45

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09010b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v52

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0901a2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v46

    const/4 v6, 0x0

    if-eqz v47, :cond_e

    move/from16 v0, v46

    move/from16 v1, v52

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move/from16 v0, v45

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float v51, v2, v3

    cmpl-float v2, v6, v51

    if-lez v2, :cond_2

    move/from16 v6, v51

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_MIN_WIDTH:F

    cmpg-float v2, v6, v2

    if-gez v2, :cond_3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_MIN_WIDTH:F

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v7, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MIN_HEIGHT:F

    cmpg-float v2, v7, v2

    if-gez v2, :cond_4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MIN_HEIGHT:F

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float v13, v6, v2

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const v3, 0x7f02015d

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setNinePatchBackground(I)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float/2addr v2, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    if-eqz v47, :cond_f

    const/4 v2, 0x3

    :goto_6
    int-to-float v2, v2

    mul-float/2addr v2, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setInternalFocus(Z)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v5, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v5, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v10

    mul-float/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_FONT_COLOR:I

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v8}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v11, v2

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v2, 0x7f0d002d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v18

    sget-object v19, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move v14, v7

    invoke-direct/range {v9 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v8}, Lcom/samsung/android/glview/GLButton;->setContentDescription(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setHighlightVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setButtonShapeVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    new-instance v14, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v21, v2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_FONT_COLOR:I

    move/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v18, v6

    move/from16 v19, v7

    invoke-direct/range {v14 .. v23}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    if-eqz v47, :cond_5

    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v11, v2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v2, 0x7f0d002d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v18

    sget-object v19, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move v12, v7

    move v14, v7

    invoke-direct/range {v9 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09010c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setContentDescription(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setHighlightVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setButtonShapeVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    :cond_5
    new-instance v21, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_MARGIN:F

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v28, v2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_BUTTON_FONT_COLOR:I

    move/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v25, v6

    move/from16 v26, v7

    invoke-direct/range {v21 .. v30}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v11, v2

    if-eqz v47, :cond_14

    const/4 v2, 0x2

    :goto_b
    int-to-float v2, v2

    mul-float v12, v7, v2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v2, 0x7f0d002d

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v18

    sget-object v19, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move v14, v7

    invoke-direct/range {v9 .. v19}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0901a3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setContentDescription(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setHighlightVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setButtonShapeVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    if-eqz v47, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090163

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;FLandroid/graphics/Typeface;)F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_MARGIN:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float v32, v2, v3

    new-instance v28, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_TEXT_FONT_SIZE:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v3

    mul-float v35, v2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_FONT_COLOR:I

    move/from16 v36, v0

    const/16 v37, 0x0

    invoke-direct/range {v28 .. v37}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedBOLDFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLText;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_15

    new-instance v35, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v36

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sub-float v2, v2, v32

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    sub-float v37, v2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    move/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move/from16 v39, v32

    invoke-direct/range {v35 .. v44}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    sub-float v5, v5, v32

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    sub-float/2addr v5, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v5, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setText(Lcom/samsung/android/glview/GLText;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_16

    new-instance v35, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v36

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    sub-float v37, v2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    move/from16 v40, v0

    const v41, 0x7f020284

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-direct/range {v35 .. v44}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    sub-float/2addr v5, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    add-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0901d3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    new-instance v2, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;-><init>(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/menu/ModeListMenu$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    :goto_e
    new-instance v35, Lcom/samsung/android/glview/GLGridList;

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v36

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_WIDTH:F

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_COLS_WIDTH:F

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_HORIZONTAL_SPACING:F

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_VERTICAL_SPACING:F

    move/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

    move/from16 v44, v0

    invoke-direct/range {v35 .. v44}, Lcom/samsung/android/glview/GLGridList;-><init>(Lcom/samsung/android/glview/GLContext;FFFFFFFI)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const v3, 0x7f020287

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLGridList;->setScrollBarResource(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLGridList;->setScrollBarAlpha(F)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_HORIZONTAL_SPACING:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_VERTICAL_SPACING:F

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLGridList;->setNumColumns(IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_TOP_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_SCROLL_MARGIN_BOTTOM:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_BOTTOM_MARGIN:F

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLGridList;->setSize(FFZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLGridList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getListLeftPosition(F)F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_TOP_MARGIN:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLGridList;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLGridList;->setScrollListener(Lcom/samsung/android/glview/GLAbsList$ScrollListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const-string v3, "MODE_MENU_LIST"

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLGridList;->setObjectTag(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7f0b000c

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v5

    new-instance v9, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v9}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v2, v3, v4, v5, v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimation_0:Landroid/view/animation/Animation;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const v5, 0x7f0b000c

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v5

    new-instance v9, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v9}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v2, v3, v4, v5, v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimation_90:Landroid/view/animation/Animation;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const v5, 0x7f0b000c

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v5

    new-instance v9, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v9}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v2, v3, v4, v5, v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimation_180:Landroid/view/animation/Animation;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const v5, 0x7f0b000c

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v5

    new-instance v9, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;

    invoke-direct {v9}, Lcom/sec/android/app/camera/util/interpolator/QuintOut80;-><init>()V

    invoke-static {v2, v3, v4, v5, v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideInAnimation(Lcom/samsung/android/glview/GLView;IZILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimation_270:Landroid/view/animation/Animation;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mHideAnimation_0:Landroid/view/animation/Animation;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mHideAnimation_90:Landroid/view/animation/Animation;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mHideAnimation_180:Landroid/view/animation/Animation;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->getSlideOutAnimation(Lcom/samsung/android/glview/GLView;IZ)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mHideAnimation_270:Landroid/view/animation/Animation;

    const v2, 0x7f0b000b

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/sec/android/app/camera/provider/CameraGestureManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/provider/CameraGestureManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    return-void

    :cond_9
    const/16 v47, 0x0

    goto/16 :goto_0

    :cond_a
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->DOWNLOAD_BUTTON_SIZE:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    const v8, 0x7f020145

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_1

    :cond_b
    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->DOWNLOAD_BUTTON_SIZE:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_OFFSET:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_OFFSET:I

    neg-int v5, v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_WIDTH:I

    int-to-float v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_ICON_WIDTH:I

    int-to-float v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0901d7

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->NEW_BADGE_TEXT_SIZE:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->BUTTON_FONT_COLOR:I

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    goto/16 :goto_2

    :cond_c
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->DOWNLOAD_BUTTON_SIZE:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_LEFT_MARGIN:F

    add-float/2addr v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    const v8, 0x7f020285

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    move/from16 v0, v48

    invoke-virtual {v2, v3, v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    sub-float v5, v5, v49

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    sub-float/2addr v4, v5

    move/from16 v0, v49

    invoke-virtual {v2, v3, v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    move/from16 v0, v49

    invoke-virtual {v2, v3, v4, v0}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_4

    :cond_e
    move/from16 v0, v46

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v6

    goto/16 :goto_5

    :cond_f
    const/4 v2, 0x2

    goto/16 :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sub-float/2addr v4, v13

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    sub-float/2addr v5, v13

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v5, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    add-float/2addr v4, v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    sub-float/2addr v5, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->OPTION_GROUP_MARGIN:F

    add-float/2addr v5, v13

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLViewGroup;->getPaddings()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    add-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    goto/16 :goto_7

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_8

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_9

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoText:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto/16 :goto_a

    :cond_14
    const/4 v2, 0x1

    goto/16 :goto_b

    :cond_15
    new-instance v35, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v36

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sub-float v37, v2, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_BUTTON_HEIGHT:F

    move/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move/from16 v39, v32

    invoke-direct/range {v35 .. v44}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    sub-float v4, v4, v32

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    sub-float v5, v5, v32

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    add-float v4, v4, v32

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    sub-float/2addr v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MENU_BAR_GROUP_MARGIN:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MORE_BUTTON_RIGHT_MARGIN:F

    add-float v5, v5, v32

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    goto/16 :goto_c

    :cond_16
    new-instance v35, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_WIDTH:F

    move/from16 v40, v0

    const v41, 0x7f020283

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-direct/range {v35 .. v44}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_BACK_ICON_MARGIN:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    goto/16 :goto_d

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    goto/16 :goto_e

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_HORIZONTAL_SPACING:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_VERTICAL_SPACING:F

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_PORTRAIT_NUM_OF_COLUMNS:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLGridList;->setNumColumns(IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_PORTRAIT_TOP_MARGIN:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_SCROLL_MARGIN_BOTTOM:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_BOTTOM_MARGIN:F

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLGridList;->setSize(FFZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLGridList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_PORTRAIT_TOP_MARGIN:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    goto/16 :goto_f
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/samsung/android/glview/GLView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->refreshNextFocus(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;)Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mLastBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mLastBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/camera/menu/ModeListMenu;Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;)Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/menu/ModeListMenu;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/menu/ModeListMenu;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_WIDTH:F

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/menu/ModeListMenu;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/menu/ModeListMenu;)Lcom/samsung/android/glview/GLGridList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/menu/ModeListMenu;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/menu/ModeListMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsNeedShowBaseMenu:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/menu/ModeListMenu;)Landroid/util/SparseBooleanArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutCheckedList:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/menu/ModeListMenu;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    return v0
.end method

.method private changeMode(I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ne p1, v5, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hidePageNavigators()V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->getOrderString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInitialModeOrderString:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDeleteButtonVisibility(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->getOrderString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInitialModeOrderString:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeAreaMark()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideDragHelpToast()V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v3, 0x7f0901cb

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_3
    iput v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    iget-boolean v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    if-nez v2, :cond_4

    const-string v2, "122"

    invoke-static {v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    if-ne p1, v6, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hidePageNavigators()V

    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_7

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDraggable(Z)V

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setShortCutCheckBoxVisibility(I)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iput v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->refreshNextFocus(Lcom/samsung/android/glview/GLView;)V

    const-string v2, "123"

    invoke-static {v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v2, v5, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideModeAreaMark()V

    const/4 v0, 0x0

    :goto_4
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_d

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDeleteButtonVisibility(I)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v2, v6, :cond_d

    const/4 v0, 0x0

    :goto_5
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_d

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-boolean v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditPossible:Z

    if-eqz v2, :cond_b

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDraggable(Z)V

    :cond_b
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getButton()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/glview/GLView;->setClickable(Z)V

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setShortCutCheckBoxVisibility(I)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showPageNavigators()V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutCheckedList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    iput v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    iget-boolean v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    if-nez v2, :cond_4

    const-string v2, "121"

    invoke-static {v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private compareModeOrder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x0

    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v1

    array-length v5, v2

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_2

    aget-object v4, v1, v0

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    aget-object v5, v2, v0

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/ModeItem;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedAndPreloadedShootingMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getListLeftPosition(F)F
    .locals 4

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    sub-float v0, v1, v2

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    int-to-float v0, v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    add-float v0, v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    int-to-float v0, v1

    goto :goto_0
.end method

.method private getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getModeItem()Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v0

    goto :goto_0
.end method

.method private getShortCutImageId(I)I
    .locals 1

    const v0, 0x7f02021e

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x7f02022a

    goto :goto_0

    :pswitch_2
    const v0, 0x7f02022b

    goto :goto_0

    :pswitch_3
    const v0, 0x7f02022c

    goto :goto_0

    :pswitch_4
    const v0, 0x7f02021f

    goto :goto_0

    :pswitch_5
    const v0, 0x7f020220

    goto :goto_0

    :pswitch_6
    const v0, 0x7f02022d

    goto :goto_0

    :pswitch_7
    const v0, 0x7f020222

    goto :goto_0

    :pswitch_8
    const v0, 0x7f02022e

    goto :goto_0

    :pswitch_9
    const v0, 0x7f020223

    goto :goto_0

    :pswitch_a
    const v0, 0x7f020224

    goto :goto_0

    :pswitch_b
    const v0, 0x7f020230

    goto :goto_0

    :pswitch_c
    const v0, 0x7f020226

    goto :goto_0

    :pswitch_d
    const v0, 0x7f020232

    goto :goto_0

    :pswitch_e
    const v0, 0x7f020227

    goto :goto_0

    :pswitch_f
    const v0, 0x7f020228

    goto :goto_0

    :pswitch_10
    const v0, 0x7f020237

    goto :goto_0

    :pswitch_11
    const v0, 0x7f02021c

    goto :goto_0

    :pswitch_12
    const v0, 0x7f020221

    goto :goto_0

    :pswitch_13
    const v0, 0x7f020229

    goto :goto_0

    :pswitch_14
    const v0, 0x7f020225

    goto :goto_0

    :pswitch_15
    const v0, 0x7f020231

    goto :goto_0

    :pswitch_16
    const v0, 0x7f02021d

    goto :goto_0

    :pswitch_17
    const v0, 0x7f020234

    goto :goto_0

    :pswitch_18
    const v0, 0x7f02022f

    goto :goto_0

    :pswitch_19
    const v0, 0x7f020236

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_12
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_d
        :pswitch_16
        :pswitch_7
        :pswitch_8
        :pswitch_18
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_10
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_b
        :pswitch_e
        :pswitch_0
        :pswitch_a
        :pswitch_11
        :pswitch_17
        :pswitch_5
        :pswitch_9
        :pswitch_1
        :pswitch_c
        :pswitch_2
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_19
    .end packed-switch
.end method

.method private getShortCutImageId(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    const v0, 0x7f02021e

    :goto_1
    return v0

    :sswitch_0
    const-string v1, "com.sec.android.app.camera.shootingmode.panorama3d.ActivityStub"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "com.sec.android.app.camera.shootingmode.virtualtour.VirtualTourActivity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    const v0, 0x7f020233

    goto :goto_1

    :pswitch_1
    const v0, 0x7f020235

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x32536910 -> :sswitch_0
        0x410cbdf2 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hideDragHelpToast()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->isShowingDragHelpToast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method private hideModeAreaMark()V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gt v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLImage;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLGridList;->removeView(Lcom/samsung/android/glview/GLView;)V

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLImage;->clear()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private isShowingDragHelpToast()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDragHelpToast:Landroid/widget/Toast;

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

.method private refreshNextFocus(Lcom/samsung/android/glview/GLView;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v1, "ModeListMenu"

    const-string v2, "listFirstView is null"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->resetNextFocusId()V

    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    check-cast p1, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getShortCutButton()Lcom/samsung/android/glview/GLView;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->resetNextFocusId()V

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->resetNextFocusId()V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->resetNextFocusId()V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->resetNextFocusId()V

    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setNextFocusLeftView(Lcom/samsung/android/glview/GLView;)Z

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusDownView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setNextFocusUpView(Lcom/samsung/android/glview/GLView;)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private requestShootingModeShortcut(Lcom/sec/android/app/camera/widget/gl/ModeItem;)V
    .locals 6

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getShootingMode(ILjava/lang/String;)Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeTitle:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->activityName:Ljava/lang/String;

    iget-object v5, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->activityName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getShortCutImageId(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->installShootingModeShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedAndPreloadedShootingMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->modeTitle:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->activityName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getShortCutImageId(I)I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->installShootingModeShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage$PlugInShootingMode;->activityName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getShortCutImageId(I)I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->installShootingModeShortcut(ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private resetOrder(Z)V
    .locals 13

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mFirstBox:Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    if-eqz v4, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    sget-boolean v11, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->moveEmptyToLast(Lcom/samsung/android/glview/GLView;)Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v7}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getModeItem()Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    sget-boolean v11, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v11, :cond_3

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getId()I

    move-result v8

    :cond_0
    :goto_1
    move-object v3, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v11

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    instance-of v11, v11, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    if-nez v11, :cond_4

    const-string v11, "ModeListMenu"

    const-string v12, "Invalid menu data was provided"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v8

    goto :goto_1

    :cond_4
    sget-boolean v11, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SHOOTINGMODE_SELFIE:Z

    if-eqz v11, :cond_5

    const/16 v11, 0x154

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x2c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getItem()Lcom/samsung/android/glview/GLView;

    move-result-object v6

    instance-of v11, v6, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    if-nez v11, :cond_6

    instance-of v11, v6, Lcom/sec/android/app/camera/widget/gl/EmptyItem;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/16 v11, 0x12c

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x2c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    move-object v10, v6

    check-cast v10, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v11

    const/16 v12, 0x63

    if-eq v11, v12, :cond_7

    invoke-virtual {v10}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->appendItemString(Ljava/lang/StringBuilder;Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;)V

    const/16 v11, 0x2c

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-boolean v11, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getNext()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    goto :goto_3

    :cond_8
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentModeOrderString:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    check-cast v9, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->saveOrder()V

    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-static {v11, v12}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->updateShootingModeFrontOrder(Landroid/content/Context;Ljava/util/ArrayList;)Z

    goto/16 :goto_2

    :cond_a
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    instance-of v11, v11, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    if-nez v11, :cond_b

    const-string v11, "ModeListMenu"

    const-string v12, "Invalid menu data was provided"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    const/16 v11, 0x12c

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x2c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_5
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getItem()Lcom/samsung/android/glview/GLView;

    move-result-object v6

    instance-of v11, v6, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    if-nez v11, :cond_c

    instance-of v11, v6, Lcom/sec/android/app/camera/widget/gl/EmptyItem;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_c
    move-object v10, v6

    check-cast v10, Lcom/sec/android/app/camera/widget/gl/ModeItem;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v11

    const/16 v12, 0x63

    if-eq v11, v12, :cond_d

    invoke-virtual {v10}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->appendItemString(Ljava/lang/StringBuilder;Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;)V

    const/16 v11, 0x2c

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-boolean v11, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_6
    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getNext()Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    goto :goto_5

    :cond_e
    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getCommandId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentModeOrderString:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    check-cast v9, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->saveOrder()V

    iget-object v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-static {v11, v12}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesDBHelper;->updateShootingModeOrder(Landroid/content/Context;Ljava/util/ArrayList;)Z

    goto/16 :goto_2
.end method

.method private setAnimation()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimation_0:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mHideAnimation_0:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimation_90:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mHideAnimation_90:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimation_180:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mHideAnimation_180:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimation_270:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mHideAnimation_270:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private showModeAreaMark()V
    .locals 15

    const v14, 0x7f02013b

    const/4 v10, 0x2

    const/4 v13, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v9

    if-gtz v9, :cond_1

    const-string v9, "ModeListMenu"

    const-string v10, "Mode List size is 0 or less."

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-ne v9, v10, :cond_4

    :cond_2
    iget v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

    :goto_0
    iget v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-ne v9, v10, :cond_5

    :cond_3
    iget v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_HORIZONTAL_SPACING:F

    iget v8, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_VERTICAL_SPACING:F

    :goto_1
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v6

    div-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v4, v10

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v9, v13}, Lcom/samsung/android/glview/GLGridList;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLGridList;->getLeft()F

    move-result v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_EDIT_AREA_MARK_WIDTH:F

    div-float/2addr v10, v12

    sub-float/2addr v9, v10

    div-float v10, v7, v12

    add-float v1, v9, v10

    :goto_2
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v9, v13}, Lcom/samsung/android/glview/GLGridList;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_EDIT_AREA_MARK_WIDTH:F

    div-float/2addr v10, v12

    sub-float/2addr v9, v10

    div-float v10, v8, v12

    add-float v2, v9, v10

    const/4 v0, 0x0

    :goto_3
    add-int/lit8 v9, v4, -0x1

    if-ge v0, v9, :cond_0

    const/4 v3, 0x0

    :goto_4
    add-int/lit8 v9, v6, -0x1

    if-ge v3, v9, :cond_8

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v5, Lcom/samsung/android/glview/GLImage;

    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v9

    int-to-float v10, v3

    iget v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_WIDTH:F

    add-float/2addr v11, v7

    mul-float/2addr v10, v11

    sub-float v10, v1, v10

    int-to-float v11, v0

    iget v12, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    add-float/2addr v12, v8

    mul-float/2addr v11, v12

    add-float/2addr v11, v2

    invoke-direct {v5, v9, v10, v11, v14}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    :goto_5
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v9, v13}, Lcom/samsung/android/glview/GLGridList;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLView;->getTranslateX()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v10, v13}, Lcom/samsung/android/glview/GLGridList;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLView;->getTranslateY()F

    move-result v10

    invoke-virtual {v5, v9, v10}, Lcom/samsung/android/glview/GLImage;->translateAbsolute(FF)V

    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    iget-object v10, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditAreaMarkList:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v9, v5}, Lcom/samsung/android/glview/GLGridList;->addView(Lcom/samsung/android/glview/GLView;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    iget v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_PORTRAIT_NUM_OF_COLUMNS:I

    goto/16 :goto_0

    :cond_5
    iget v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_HORIZONTAL_SPACING:F

    iget v8, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_VERTICAL_SPACING:F

    goto/16 :goto_1

    :cond_6
    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v9, v13}, Lcom/samsung/android/glview/GLGridList;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLGridList;->getLeft()F

    move-result v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_EDIT_AREA_MARK_WIDTH:F

    div-float/2addr v10, v12

    sub-float/2addr v9, v10

    div-float v10, v7, v12

    add-float v1, v9, v10

    goto/16 :goto_2

    :cond_7
    new-instance v5, Lcom/samsung/android/glview/GLImage;

    iget-object v9, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v9

    int-to-float v10, v3

    iget v11, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_WIDTH:F

    add-float/2addr v11, v7

    mul-float/2addr v10, v11

    add-float/2addr v10, v1

    int-to-float v11, v0

    iget v12, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    add-float/2addr v12, v8

    mul-float/2addr v11, v12

    add-float/2addr v11, v2

    invoke-direct {v5, v9, v10, v11, v14}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    goto :goto_5

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "ModeListMenu"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->reset()V

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->unregisterGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutCheckedList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    return-void
.end method

.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 12

    const/4 v11, 0x0

    const/16 v10, 0xbe0

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "ModeListMenu"

    const-string v8, "onClick"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInfoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iput-boolean v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsInfoMenuShowing:Z

    const-string v7, "1214"

    invoke-static {v7}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->isAnimationFinished()Z

    move-result v7

    if-nez v7, :cond_2

    const-string v6, "ModeListMenu"

    const-string v7, "return.. Mode menu animation is running.."

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOneTimeHideAnimation(Landroid/view/animation/Animation;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v7, 0xbe1

    invoke-virtual {v5, v7}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mPreviousScreenId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;->setPreviousScreenId(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5, v10, v11}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    move v5, v6

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v5, v10}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMoreButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->isAnimationFinished()Z

    move-result v7

    if-nez v7, :cond_5

    const-string v6, "ModeListMenu"

    const-string v7, "return.. Mode menu animation is running.."

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v7

    if-nez v7, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :cond_6
    :goto_2
    move v5, v6

    goto :goto_0

    :cond_7
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLViewGroup;->requestFocus()Z

    goto :goto_2

    :cond_8
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v5, "1212"

    invoke-static {v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    move v5, v6

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShortCutButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v5, "1213"

    invoke-static {v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    move v5, v6

    goto/16 :goto_0

    :cond_a
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDoneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v7, v6, :cond_b

    const-string v7, "1252"

    invoke-static {v7}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/menu/ModeListMenu;->resetOrder(Z)V

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v7, 0x1c2c

    invoke-interface {v5, v7, v11}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    move v5, v6

    goto/16 :goto_0

    :cond_b
    iget v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v7, v9, :cond_0

    const-string v7, "1261"

    invoke-static {v7}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_3
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v7

    if-ge v2, v7, :cond_e

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v3

    if-nez v3, :cond_d

    :cond_c
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getShortCutCheckBoxSelected()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->requestShootingModeShortcut(Lcom/sec/android/app/camera/widget/gl/ModeItem;)V

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_e
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v7, 0x1c2b

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    move v5, v6

    goto/16 :goto_0

    :cond_f
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v7, "1251"

    invoke-static {v7}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v7, v9, :cond_10

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    move v5, v6

    goto/16 :goto_0

    :cond_10
    iget v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v7, v6, :cond_0

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->refreshModeMenu()V

    move v5, v6

    goto/16 :goto_0

    :cond_11
    iget-object v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mDownLoadButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x74

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLText;->isVisible()I

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->syncUploadedShootingModeListDBWithServer(Landroid/content/Context;)V

    :cond_12
    const-string v5, "1201"

    invoke-static {v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    move v5, v6

    goto/16 :goto_0
.end method

.method public onDrag(Lcom/samsung/android/glview/GLView;FFFF)V
    .locals 5

    const/high16 v4, 0x40400000    # 3.0f

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    float-to-int v2, p2

    float-to-int v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->resetOrder(Z)V

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/glview/GLGridList;->scrollList(FF)Z

    :cond_2
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    cmpl-float v1, p3, v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_3

    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    neg-float v0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    cmpl-float v1, p3, v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    neg-float v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    cmpl-float v1, p2, v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    neg-float v0, v1

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    cmpl-float v1, p2, v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getBottom()F

    move-result v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_6

    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    neg-float v0, v1

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->getTop()F

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_ITEM_HEIGHT:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_TRANSLATE_OFFSET:F

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onDragEnd(Lcom/samsung/android/glview/GLView;FF)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->resetOrder(Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    if-eqz v0, :cond_1

    const-string v0, "1205"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mInitialModeOrderString:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentModeOrderString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->compareModeOrder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->resetOrder(Z)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1c2c

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v1, 0xbe1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->removeMenu(I)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "122"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "1253"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v1, 0xbe0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->removeMenu(I)V

    goto :goto_1
.end method

.method public onDragStart(Lcom/samsung/android/glview/GLView;FF)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-nez v0, :cond_0

    const-string v0, "1203"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNormalModeDrag:Z

    goto :goto_0
.end method

.method public onDrop(Lcom/samsung/android/glview/GLView;)V
    .locals 0

    return-void
.end method

.method public onFlingDirection(II)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    const/4 p1, 0x1

    :cond_1
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-nez v1, :cond_3

    if-ne p1, v0, :cond_3

    const-string v1, "1211"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideMenu()V

    :goto_1
    return v0

    :cond_2
    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onHide()V
    .locals 5

    const/4 v4, 0x0

    const-string v2, "ModeListMenu"

    const-string v3, "onHide"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getModeItem()Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDraggable(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->unregisterGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideDragHelpToast()V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-eqz v2, :cond_2

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsInfoMenuShowing:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mHideAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideBlackOverlay()V

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mPreviousScreenId:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startVoiceRecognizer()V

    :cond_4
    return-void

    :cond_5
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const v2, 0x7f0b000b

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideBlackOverlayWithAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsNeedShowBaseMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsInfoMenuShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    :cond_0
    return-void
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
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackKeyPressed:Z

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
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackKeyPressed:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v1, v0, :cond_1

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->refreshModeMenu()V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideMenu()V

    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackKeyPressed:Z

    goto :goto_0

    :sswitch_2
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :cond_4
    :goto_1
    iput-boolean v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mBackKeyPressed:Z

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    goto :goto_1

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
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eq v1, p1, :cond_4

    const-string v1, "ModeListMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOrientationChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setAnimation()V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v1, v8, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->hideModeAreaMark()V

    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-ne v1, v7, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_HORIZONTAL_SPACING:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LANDSCAPE_LIST_VERTICAL_SPACING:F

    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_LANDSCAPE_NUM_OF_COLUMNS:I

    invoke-virtual {v1, v2, v5}, Lcom/samsung/android/glview/GLGridList;->setNumColumns(IZ)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_WIDTH:F

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getListLeftPosition(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_TOP_MARGIN:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_WIDTH:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_TOP_MARGIN:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_SCROLL_MARGIN_BOTTOM:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_BOTTOM_MARGIN:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/glview/GLGridList;->setSize(FFZ)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->isScrollable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->showScrollBar()V

    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v1, v8, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->showModeAreaMark()V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v5}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCurrentMode:I

    if-ne v1, v7, :cond_6

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getShortCutButton()Lcom/samsung/android/glview/GLView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->requestFocus()Z

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mListMenuGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_HORIZONTAL_SPACING:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->PORTRAIT_LIST_VERTICAL_SPACING:F

    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/glview/GLGridList;->setSpacing(FFZ)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_MENU_PORTRAIT_NUM_OF_COLUMNS:I

    invoke-virtual {v1, v2, v5}, Lcom/samsung/android/glview/GLGridList;->setNumColumns(IZ)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_PORTRAIT_TOP_MARGIN:F

    invoke-virtual {v1, v6, v2}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_HEIGHT:F

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->SCREEN_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_PORTRAIT_TOP_MARGIN:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_SCROLL_MARGIN_BOTTOM:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_MENU_BOTTOM_MARGIN:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/glview/GLGridList;->setSize(FFZ)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v2, 0x3

    invoke-virtual {v1, v6, v2}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->requestFocus()Z

    goto :goto_1
.end method

.method public onScrollDirection(II)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/menu/ModeListMenu;->onFlingDirection(II)Z

    move-result v0

    return v0
.end method

.method public onScrollEnd()V
    .locals 1

    const-string v0, "1206"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method

.method public onScrollStart()V
    .locals 0

    return-void
.end method

.method protected onShow()V
    .locals 10

    const v9, 0x7f0b000d

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "ModeListMenu"

    const-string v4, "onShow"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->getSAScreenId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mPreviousScreenId:Ljava/lang/String;

    const-string v3, "121"

    invoke-static {v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mAdapter:Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/ModeListMenu$MenuAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ModeListMenu"

    const-string v4, "adapter size is 0"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->refreshModeMenu()V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->registerGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setAnimation()V

    iput-boolean v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsInfoMenuShowing:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->isActive()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-static {v9}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-static {v9}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v1, v7}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3, v1}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLGridList;->isScrollable()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLGridList;->showScrollBar()V

    :cond_2
    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_WIDTH:F

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getListLeftPosition(F)F

    move-result v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_LANDSCAPE_TOP_MARGIN:F

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v3

    if-ne v3, v7, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopVoiceRecognizer()V

    :cond_4
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_a

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3, v7}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    iput-boolean v6, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditPossible:Z

    :cond_5
    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v3

    if-ge v0, v3, :cond_c

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->getModeItem(I)Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_b

    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_TITLE_SELECTED_FONT_COLOR:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setFontColor(I)V

    :cond_6
    :goto_3
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedShootingMode(I)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->getCommandId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesLoader;->isSeparatedAndPreloadedShootingMode(I)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setSelect(Z)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    iget v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->LIST_PORTRAIT_TOP_MARGIN:F

    invoke-virtual {v3, v8, v4}, Lcom/samsung/android/glview/GLGridList;->moveLayoutAbsolute(FF)V

    goto :goto_0

    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    iput-boolean v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditPossible:Z

    goto :goto_1

    :cond_b
    iget v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->MODE_TITLE_FONT_COLOR:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setFontColor(I)V

    goto :goto_3

    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->updateNewBadgeButton()V

    iput-boolean v7, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsNeedShowBaseMenu:Z

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090046

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_d
    return-void
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->findLastSelectedView()Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->requestFocus()Z

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimationListener:Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimationListener:Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;

    invoke-interface {v2}, Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;->onShowAnimationComplete()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimationListener:Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLGridList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mEditPossible:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLGridList;->get(I)Lcom/samsung/android/glview/GLView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ModeMenuDragDropBox;->getModeItem()Lcom/sec/android/app/camera/widget/gl/ModeItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ModeItem;->setDraggable(Z)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOptionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public refreshModeMenu()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v0, "ModeListMenu"

    const-string v1, "refreshModeMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mModeIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getBackCameraShootingModeOrder(Lcom/sec/android/app/camera/interfaces/CameraContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLGridList;->invalidate()V

    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOrientation:I

    if-ne v0, v4, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackCameraShootingModeOrder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/BackCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getInstance()Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->getFrontCameraShootingModeOrder(Lcom/sec/android/app/camera/interfaces/CameraContext;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuResource:Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBase;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontCameraShootingModeOrder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/FrontCameraShootingModeResourceData;->resetOrder(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mList:Lcom/samsung/android/glview/GLGridList;

    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/glview/GLGridList;->updateStartOffset(FI)V

    goto :goto_1
.end method

.method public setOnShowAnimationListener(Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mShowAnimationListener:Lcom/sec/android/app/camera/menu/ModeListMenu$OnShowAnimationListener;

    return-void
.end method

.method public showModeEditMenu()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    return-void
.end method

.method public showModeInfoMenu()V
    .locals 3

    const/16 v2, 0xbe0

    const-string v0, "ModeListMenu"

    const-string v1, "showModeInfoMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mIsInfoMenuShowing:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mOneTimeHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->setOneTimeHideAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    const/16 v1, 0xbe1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    goto :goto_0
.end method

.method public showModeShortcutMenu()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ModeListMenu;->changeMode(I)V

    return-void
.end method

.method public updateNewBadgeButton()V
    .locals 2

    const-string v0, "ModeListMenu"

    const-string v1, "updateNewBadgeButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SEPARATED_SHOOTING_MODES:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/plugin/PlugInShootingModesStorage;->isNewShootingModesUploaded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ModeListMenu;->mNewBadge:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    goto :goto_0
.end method
