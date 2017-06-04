.class Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;
.super Ljava/lang/Object;
.source "TwLangIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andraskindler/quickscroll/TwLangIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexScroll"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;
    }
.end annotation


# instance fields
.field private FLOAT_DIV_MULT_ERROR:F

.field private final debug:Z

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetArrayFirstLetterIndex:I

.field private mAlphabetArrayLastLetterIndex:I

.field private mAlphabetArrayToDraw:[Ljava/lang/String;

.field private mAlphabetSize:I

.field private mAlphabetToDrawSize:I

.field private mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

.field private mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

.field private mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

.field private mBgRect:Landroid/graphics/Rect;

.field private mBgRectParamsSet:Z

.field private mBgRectWidth:I

.field private mBgTintColor:I

.field private mBigText:Ljava/lang/String;

.field private mContentPadding:I

.field private mContext:Landroid/content/Context;

.field private mDepth:I

.field private mDotHeight:I

.field private mDotRepresentations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectTextColor:I

.field mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

.field private mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

.field private mHandleTextColorPressed:I

.field private mHandleTextColorPressed2ndAct:I

.field private mHeight:I

.field private mIndexBgLineWidth:F

.field private mIndexScrollPreviewRadius:F

.field private mIndexScrollViewTheme:I

.field private mItemHeight:F

.field private mItemWidth:I

.field private mItemWidthGap:I

.field private mMaxDepth:I

.field private mMinSeparatorHeight:F

.field private mOrigSelectedDotIndex:I

.field private mOrigSelectedIndex:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPosition:I

.field private mPreviewLimitY:F

.field private mSECRobotoMediumFont:Landroid/graphics/Typeface;

.field private mScreenHeight:I

.field private mScrollBottomMargin:I

.field private mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mScrollThumbBgRect:Landroid/graphics/Rect;

.field private mScrollThumbBgRectHeight:I

.field private mScrollThumbBgRectPadding:I

.field private mScrollTop:I

.field private mScrollTopMargin:I

.field mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

.field private mSelectedIndex:I

.field private mSelectedIndexPositionInOrigAlphabet:[I

.field private mSeparatorColor:I

.field private mSeparatorHeight:F

.field private mSeparatorLeftPos:I

.field private mSeparatorThickness:I

.field private mSeparatorWidth:I

.field private mSmallText:Ljava/lang/String;

.field private mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextColorDimmed:I

.field private mTextSize:I

.field private mThumbColor:I

.field private mWidth:I

.field private mWidthShift:I

.field private m_bAlphabetArrayWithDotsUsed:Z

.field private m_bIsAlphabetInit:Z

.field private m_bSubIndexScrollExists:Z

.field private mbSetDimensionns:Z

.field final synthetic this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;


# direct methods
.method public constructor <init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;Landroid/content/Context;IIII)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->debug:Z

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    iput v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    iput v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    iput p3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iput p4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iput p5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    iput p6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    iput v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    iput v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    iput-object p2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;Landroid/content/Context;II[Ljava/lang/String;IIIIIII)V
    .locals 2

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->debug:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x3a83126f    # 0.001f

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->FLOAT_DIV_MULT_ERROR:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    iput p7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    iput p8, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iput p9, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iput p10, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iput p3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    iput p4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    iput p11, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    iput p12, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    iput p6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->init()V

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, p5, v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setAlphabetArray([Ljava/lang/String;II)V

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->manageIndexScrollHeight()V

    return-void
.end method

.method static synthetic access$600(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;)I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mThumbColor:I

    return v0
.end method

.method private adjustSeparatorHeight()V
    .locals 11

    const v10, 0x3f19999a    # 0.6f

    const/high16 v7, 0x3f000000    # 0.5f

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mNumberOfLanguages:I
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2600(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v2, v1

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v4

    int-to-double v4, v1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v2, v1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v2, v4

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v4

    int-to-double v4, v1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    :goto_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iput v6, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iput v6, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v7

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v2, v1

    mul-double/2addr v2, v8

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v4

    int-to-double v4, v1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-double v2, v1

    mul-double/2addr v2, v8

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v1, v4

    int-to-double v4, v1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v7

    iput v2, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iput v2, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v1, v1

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iput v6, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iput v6, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    goto/16 :goto_0
.end method

.method private allocateBgRectangle()V
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-ne v4, v8, :cond_4

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int v2, v4, v5

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    sub-int v1, v2, v4

    :goto_0
    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z
    invoke-static {v4}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mContentPadding:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mContentPadding:I

    add-int/2addr v6, v7

    invoke-direct {v4, v1, v5, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v1, v4

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mTouchY:F
    invoke-static {v4}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3800(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)F

    move-result v4

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v3, v4

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mTouchY:F
    invoke-static {v4}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3800(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)F

    move-result v4

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v0, v4

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v4, v5

    if-gt v0, v4, :cond_1

    :cond_0
    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_5

    :cond_1
    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int v3, v4, v5

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int v0, v4, v5

    :cond_2
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    :goto_2
    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-ne v4, v8, :cond_3

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    int-to-float v4, v4

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexBgLineWidth:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    :cond_3
    return-void

    :cond_4
    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    add-int v2, v4, v5

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    add-int v3, v4, v5

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    add-int v0, v3, v4

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int/2addr v4, v5

    if-le v0, v4, :cond_2

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sub-int v0, v4, v5

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectHeight:I

    sub-int v3, v0, v4

    goto :goto_1

    :cond_7
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    add-int/2addr v6, v7

    invoke-direct {v4, v1, v5, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    goto :goto_2
.end method

.method private calcDotPosition(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;III)V
    .locals 21

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    sub-int v5, v18, p2

    const/4 v15, 0x0

    const/4 v13, 0x0

    move/from16 v10, p3

    :goto_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int v18, v18, p3

    move/from16 v0, v18

    if-ge v10, v0, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    move-object/from16 v18, v0

    sub-int v19, v10, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v10

    aput-object v20, v18, v19

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_d

    sub-int v14, v5, p4

    div-int/lit8 v18, v14, 0x2

    rem-int/lit8 v19, v14, 0x1

    add-int v18, v18, v19

    add-int/lit8 v7, v18, -0x1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v7, :cond_a

    if-nez v13, :cond_a

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v2, v0, [Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    div-int v18, v14, v18

    add-int/lit8 v8, v18, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v7, :cond_2

    const/4 v8, 0x2

    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v16, v0

    const/4 v11, 0x0

    :cond_3
    if-eqz v16, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v16, v0

    :cond_4
    move/from16 v10, p3

    :goto_2
    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int v18, v18, p3

    move/from16 v0, v18

    if-ge v10, v0, :cond_5

    sub-int v18, v10, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v10

    aput-object v19, v2, v18

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x1

    :goto_3
    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-ge v9, v0, :cond_3

    mul-int v18, v8, v9

    mul-int v19, v11, v9

    sub-int v17, v18, v19

    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    add-int/lit8 v18, p2, -0x1

    add-int v17, v17, v18

    :cond_6
    if-lez v17, :cond_8

    move/from16 v0, v17

    if-ge v0, v14, :cond_8

    const-string/jumbo v18, "."

    aput-object v18, v2, v17

    add-int/lit8 v16, v16, -0x1

    :cond_7
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_8
    move/from16 v0, v17

    if-lt v0, v14, :cond_7

    if-lez v16, :cond_7

    div-int/lit8 v18, v8, 0x2

    sub-int v18, v17, v18

    move/from16 v0, v18

    if-ge v0, v14, :cond_9

    div-int/lit8 v18, v8, 0x2

    sub-int v18, v17, v18

    const-string/jumbo v19, "."

    aput-object v19, v2, v18

    add-int/lit8 v16, v16, -0x1

    goto :goto_4

    :cond_9
    const/4 v11, 0x1

    goto :goto_4

    :cond_a
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    sub-int v18, v18, p2

    sub-int v18, v18, p4

    packed-switch v18, :pswitch_data_0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v18, v18, p2

    sub-int v18, v18, p4

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    :cond_b
    :goto_5
    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    if-lez v18, :cond_c

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    if-ltz v18, :cond_c

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    if-gez v18, :cond_12

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    :cond_d
    return-void

    :pswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :pswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_5

    :pswitch_2
    if-eqz p2, :cond_e

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    if-nez v18, :cond_e

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    const/4 v12, 0x1

    :goto_6
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    :cond_e
    if-eqz p2, :cond_f

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_6

    :cond_f
    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    goto :goto_6

    :pswitch_3
    if-lez p4, :cond_10

    add-int/lit8 p4, p4, -0x1

    goto/16 :goto_5

    :cond_10
    if-lez p2, :cond_b

    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    if-lez v18, :cond_13

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    div-int v3, v15, v18

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    rem-int v6, v15, v18

    :cond_13
    const/4 v10, 0x0

    :goto_7
    move/from16 v0, p2

    if-ge v10, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v10

    aput-object v18, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_14
    move/from16 v17, p2

    move/from16 v10, p2

    :goto_8
    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    sub-int v18, v18, p4

    move/from16 v0, v18

    if-ge v10, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    sub-int v18, v18, p4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_15

    if-nez v12, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v18, v0

    add-int v19, v17, p3

    aget-object v18, v18, v19

    aput-object v18, v2, v10

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v4, v0, :cond_15

    const/4 v12, 0x1

    :cond_15
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_16
    const-string/jumbo v18, "."

    aput-object v18, v2, v10

    add-int/lit8 v4, v4, 0x1

    add-int v17, v17, v3

    if-lez v6, :cond_17

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v17, v17, 0x1

    :cond_17
    const/4 v12, 0x0

    goto :goto_9

    :cond_18
    if-lez p4, :cond_19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    move/from16 v18, v0

    sub-int v18, v18, p4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    aget-object v19, v19, v20

    aput-object v19, v2, v18

    :cond_19
    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawAlphabetCharacters(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextSize:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v7, v7, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v8, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v7, v8

    int-to-float v2, v7

    const/4 v0, 0x0

    :goto_0
    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v7, v7, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    iget-object v8, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v8, v8, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    add-int/2addr v7, v8

    if-ge v0, v7, :cond_2

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v7, v7, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    if-ge v0, v7, :cond_0

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v7, v7, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    aget-object v3, v7, v0

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v7, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    :goto_1
    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v10, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v3, v8, v9, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v8, v6

    sub-float v4, v7, v8

    const-string/jumbo v7, "."

    if-ne v3, v7, :cond_1

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    int-to-double v8, v7

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v7, v10

    float-to-double v10, v7

    sub-double/2addr v8, v10

    double-to-float v7, v8

    add-float v5, v2, v7

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    int-to-float v7, v7

    add-float/2addr v2, v7

    :goto_2
    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v7, v7, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    iget-object v8, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v8, v8, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    sub-int v8, v0, v8

    aget-object v3, v7, v8

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, v7, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    goto :goto_1

    :cond_1
    float-to-double v8, v1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v7, v10

    float-to-double v10, v7

    sub-double/2addr v8, v10

    double-to-float v7, v8

    add-float v5, v2, v7

    add-float/2addr v2, v1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private drawBgRectangle(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setBgRectParams()V

    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRectParamsSet:Z

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mTouchY:F
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3800(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)F

    move-result v0

    const v1, -0x39e3c400    # -9999.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_3
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_5

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawSelectedIndexRect(Landroid/graphics/Canvas;)V
    .locals 10

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v2, v2

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v4, v4

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawSeparators(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorThickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v6, 0x1

    :goto_0
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-gt v6, v0, :cond_3

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-ne v0, v7, :cond_2

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-eq v6, v0, :cond_1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v0, v0, 0x1

    if-ne v6, v0, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    int-to-float v1, v0

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v0, v0

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    int-to-float v3, v6

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v2, v0

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexBgLineWidth:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v0, v0

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    int-to-float v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private getColorWithAlpha(IF)I
    .locals 6

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v0, v4, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3
.end method

.method private getDotIndexByY(I)Ljava/lang/String;
    .locals 14

    iget-boolean v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    if-ne v6, v7, :cond_0

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v8, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    array-length v6, v6

    if-ge v7, v6, :cond_0

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    aget-object v6, v6, v7

    :goto_0
    return-object v6

    :cond_0
    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    array-length v4, v6

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->MANY_ELEMENTS_REPRESENTED_BY_DOT:I
    invoke-static {v6}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2700(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v6

    if-lt v4, v6, :cond_2

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->MANY_ELEMENT_LOGIC:I
    invoke-static {v7}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2900(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v7

    # setter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mScrollLogic:I
    invoke-static {v6, v7}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2802(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;I)I

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v6, v7

    int-to-double v6, v6

    iget v8, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v8, v8

    iget v10, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v5, v6

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float v1, v6, v7

    :goto_1
    int-to-float v6, p1

    int-to-float v7, v5

    sub-float v3, v6, v7

    int-to-float v6, v4

    mul-float/2addr v6, v3

    div-float v0, v6, v1

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    if-lt v2, v4, :cond_3

    add-int/lit8 v2, v4, -0x1

    :cond_1
    :goto_2
    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iput v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    aget-object v6, v6, v2

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I
    invoke-static {v7}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v7

    # setter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mScrollLogic:I
    invoke-static {v6, v7}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2802(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;I)I

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v8, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    goto :goto_1

    :cond_3
    if-gez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2
.end method

.method private getIndex(I)I
    .locals 6

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    if-nez v3, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    int-to-float v3, p1

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v5, v5, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    div-float v2, v3, v0

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v1, v3

    :goto_1
    if-gez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    int-to-float v4, v4

    div-float v2, v3, v4

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v4, v4, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    float-to-int v1, v3

    int-to-float v3, v1

    add-float/2addr v3, v0

    float-to-int v1, v3

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-lt v1, v3, :cond_1

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v1, v3, -0x1

    goto :goto_0
.end method

.method private getIndexByY(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollAdditionalSpace:I
    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1900(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollAdditionalSpace:I
    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1900(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ge p1, v0, :cond_6

    const/4 v0, 0x0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    :cond_2
    :goto_1
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_4

    :cond_3
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    :cond_4
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_5

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-le v0, v1, :cond_8

    :cond_5
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p1, v0, :cond_7

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_1

    :cond_7
    invoke-direct {p0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getIndex(I)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v0, v1

    goto :goto_0

    :cond_9
    invoke-direct {p0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init()V
    .locals 10

    const v9, 0x3f4ccccd    # 0.8f

    const/4 v8, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mSECRobotoLightRegularFont:Landroid/graphics/Typeface;
    invoke-static {}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1700()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "sec-roboto-light"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    # setter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mSECRobotoLightRegularFont:Landroid/graphics/Typeface;
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1702(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSECRobotoMediumFont:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    const-string/jumbo v0, "sans-serif-medium"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSECRobotoMediumFont:Landroid/graphics/Typeface;

    :cond_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mSECRobotoLightRegularFont:Landroid/graphics/Typeface;
    invoke-static {}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1700()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->primary_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    # setter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimaryDark:I
    invoke-static {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1802(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;I)I

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_first_handle_width:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_second_handle_gap:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_first_handle_textsize:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextSize:I

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_separator_min_height:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_separator_width:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorWidth:I

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_separator_thickness:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorThickness:I

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_bg_line_width:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexBgLineWidth:F

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_first_handle_width:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_indexview_first_handle_additional_width:I

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    # setter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollAdditionalSpace:I
    invoke-static {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1902(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;I)I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    invoke-virtual {p0, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setIndexScrollViewTheme(I)V

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    iput v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_fluid_indexview_side_margin:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_fluid_indexview_top_margin:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_fluid_indexview_content_padding:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mContentPadding:I

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_fluid_content_min_height:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_visual_effect_text_color:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mEffectTextColor:I

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_index_scroll_preview_radius:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_index_scroll_preview_ypos_limit:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPreviewLimitY:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->primary_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    # setter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimary:I
    invoke-static {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2002(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;I)I

    new-instance v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;-><init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;IIIFF)V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    new-instance v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    move-object v1, p0

    move v3, v2

    move v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;-><init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;IIIFF)V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_index_scroll_thumb_padding:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRectPadding:I

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/R$dimen;->tw_index_scroll_dot_separator_height:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotHeight:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimary:I
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mThumbColor:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

    move-result-object v0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimary:I
    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v1

    invoke-direct {p0, v1, v9}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getColorWithAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mEnableCustomTheme:Z
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2200(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmEffectColor:I
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2300(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    if-eq v0, v8, :cond_4

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmEffectColor:I
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2300(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    :goto_0
    # setter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimary:I
    invoke-static {v1, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2002(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;I)I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBigTextColor:I
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    if-eq v0, v8, :cond_5

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBigTextColor:I
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mEffectTextColor:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmSmallTextColor:I
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2500(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    if-eq v0, v8, :cond_6

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmSmallTextColor:I
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2500(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mThumbColor:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

    move-result-object v0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimary:I
    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v1

    invoke-direct {p0, v1, v9}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getColorWithAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

    move-result-object v0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mEffectTextColor:I

    invoke-virtual {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;->setTextColor(I)V

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mThumbColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_3
    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->allocateBgRectangle()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimary:I
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mEffectTextColor:I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimary:I
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v0

    goto :goto_2
.end method

.method private isInSelectedIndexRect(I)Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    if-lt v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mScrollLogic:I
    invoke-static {v2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2800(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v2

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->FEW_ELEMENT_LOGIC:I
    invoke-static {v3}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3000(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v3

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    if-lt p1, v2, :cond_3

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    if-le p1, v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v2, v3

    int-to-double v2, v2

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v4, v4

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    if-lt p1, v2, :cond_5

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    add-int/2addr v2, v3

    int-to-double v2, v2

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v4, v4

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    if-le p1, v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private isSelectedIndexDot(I)Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDotRepresentations:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private manageIndexScrollHeight()V
    .locals 5

    const/4 v3, -0x1

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mNumberOfLanguages:I
    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2600(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    if-ne v1, v3, :cond_2

    iput v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    :cond_2
    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    if-ne v1, v3, :cond_3

    iput v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    :cond_3
    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iput v2, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iput v4, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    iput v2, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->totalCount:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->alphabetArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iput v4, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->dotCount:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, v2, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->indexCount:I

    int-to-float v2, v2

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v3, v3, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetToDrawSize:I

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->adjustSeparatorHeight()V

    const/4 v0, 0x0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    if-lez v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mNumberOfLanguages:I
    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2600(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    invoke-direct {p0, v1, v2, v4, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->calcDotPosition(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;III)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    invoke-direct {p0, v1, v2, v4, v4}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->calcDotPosition(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;III)V

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v1, v4, v2, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->calcDotPosition(Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;III)V

    goto/16 :goto_0
.end method

.method private setBgRectParams()V
    .locals 2

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->allocateBgRectangle()V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addSubIndex([Ljava/lang/String;)V
    .locals 14

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->addSubIndex([Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    array-length v13, p1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    int-to-float v1, v13

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v0, 0x0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v2, v2

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v4, v4

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v10

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    sub-int/2addr v2, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-instance v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    iget v9, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iget v10, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    iget v11, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v10, v11

    add-int/2addr v10, v5

    iget v11, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    add-int/lit8 v12, v5, 0x1

    move-object v5, p1

    invoke-direct/range {v0 .. v12}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;-><init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;Landroid/content/Context;II[Ljava/lang/String;IIIIIII)V

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->drawScroll(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawEffect(F)V
    .locals 14

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v6, v6, v7

    iput-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    iget-object v10, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSmallText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v5

    sub-float v3, v6, v7

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v6, v6

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    float-to-double v8, v7

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    int-to-double v10, v7

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    mul-double/2addr v8, v10

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v7, v10

    float-to-double v10, v7

    sub-double/2addr v8, v10

    double-to-float v7, v8

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v7

    iget-object v8, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float v2, v6, v7

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v6, v6

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPreviewLimitY:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    add-float v4, v6, v7

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPreviewLimitY:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    sub-float v0, v6, v7

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollPreviewRadius:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPreviewLimitY:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_0

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v6, v6

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v7, v7, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    float-to-double v8, v7

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    double-to-float v7, v8

    add-float v4, v6, v7

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    int-to-float v6, v6

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v7, v7, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v7, v7, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->height:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v7, v7, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    float-to-double v8, v7

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    double-to-float v7, v8

    sub-float v0, v6, v7

    :cond_0
    const v1, -0x39e3c400    # -9999.0f

    cmpl-float v6, p1, v4

    if-lez v6, :cond_5

    cmpg-float v6, p1, v0

    if-gez v6, :cond_5

    move v1, p1

    :cond_1
    :goto_0
    const v6, -0x39e3c400    # -9999.0f

    cmpl-float v6, v1, v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v6, :cond_2

    :cond_2
    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    :cond_3
    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;
    invoke-static {v6}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

    move-result-object v6

    iget-object v7, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBigText:Ljava/lang/String;

    invoke-virtual {v6, v1, v7}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;->open(FLjava/lang/String;)V

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mOnIndexScrollEffectListener:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexScrollEffectListener;
    invoke-static {v6}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3700(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexScrollEffectListener;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mOnIndexScrollEffectListener:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexScrollEffectListener;
    invoke-static {v6}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3700(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexScrollEffectListener;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexScrollEffectListener;->onEffectStateChanged(IF)V

    :cond_4
    return-void

    :cond_5
    cmpg-float v6, p1, v4

    if-gtz v6, :cond_6

    move v1, v4

    goto :goto_0

    :cond_6
    cmpl-float v6, p1, v0

    if-ltz v6, :cond_1

    move v1, v0

    goto :goto_0
.end method

.method public drawScroll(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->drawBgRectangle(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->drawAlphabetCharacters(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    if-lt v0, v1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollEffect:Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1500(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollEffect:Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1500(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->close()V

    :cond_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollPreview:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScrollPreview;->close()V

    :cond_2
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mOnIndexScrollEffectListener:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexScrollEffectListener;
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3700(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexScrollEffectListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mOnIndexScrollEffectListener:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexScrollEffectListener;
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3700(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexScrollEffectListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$OnIndexScrollEffectListener;->onEffectStateChanged(IF)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-direct {p0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->drawSelectedIndexRect(Landroid/graphics/Canvas;)V

    :cond_5
    invoke-direct {p0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->drawSeparators(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->drawAlphabetCharacters(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getDepth()I
    .locals 1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getDepth()I

    move-result v0

    goto :goto_0
.end method

.method public getIndexByPosition(II)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    if-nez v4, :cond_1

    const-string/jumbo v3, ""

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-boolean v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v4, :cond_2

    const-string/jumbo v3, ""

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollAdditionalSpace:I
    invoke-static {v5}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1900(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v5

    sub-int/2addr v4, v5

    if-lt p1, v4, :cond_4

    :cond_3
    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-ne v4, v7, :cond_5

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollAdditionalSpace:I
    invoke-static {v5}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1900(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v5

    add-int/2addr v4, v5

    if-le p1, v4, :cond_5

    :cond_4
    const-string/jumbo v3, ""

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollAdditionalSpace:I
    invoke-static {v5}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1900(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v5

    sub-int/2addr v4, v5

    if-lt p1, v4, :cond_a

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIndexScrollAdditionalSpace:I
    invoke-static {v5}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1900(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v5

    add-int/2addr v4, v5

    if-gt p1, v4, :cond_a

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-ne v3, v7, :cond_9

    invoke-direct {p0, p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v3}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v3, :cond_6

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_7

    :cond_6
    const-string/jumbo v3, ""

    goto :goto_0

    :cond_7
    invoke-direct {p0, p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_8
    invoke-direct {p0, p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_9
    invoke-direct {p0, p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_a
    iget-boolean v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v4, :cond_11

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    if-gt v4, v5, :cond_c

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v4, :cond_b

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    :cond_b
    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-ne v4, v7, :cond_c

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    iget v6, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    if-le p1, v4, :cond_0

    :cond_c
    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-ne v3, v7, :cond_10

    invoke-direct {p0, p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->isInSelectedIndexRect(I)Z

    move-result v3

    if-eqz v3, :cond_10

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v3}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v3, :cond_d

    iget v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_e

    :cond_d
    const-string/jumbo v3, ""

    goto/16 :goto_0

    :cond_e
    iget-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v3, v3, v4

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0, p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_10
    invoke-direct {p0, p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getIndexByY(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_11
    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_12

    const-string/jumbo v0, ""

    :goto_1
    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v4, p1, p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getIndexByPosition(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_12
    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v4}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v4

    if-nez v4, :cond_15

    :try_start_0
    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    if-eqz v4, :cond_13

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v4, :cond_13

    iget v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    array-length v5, v5

    if-lt v4, v5, :cond_14

    :cond_13
    const-string/jumbo v3, ""

    goto/16 :goto_0

    :cond_14
    iget-object v4, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayToDraw:[Ljava/lang/String;

    iget v5, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget-object v0, v4, v5
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v0, ""

    goto :goto_1

    :cond_15
    invoke-direct {p0, p2}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->getDotIndexByY(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getItemPlusSpaceWidth()I
    .locals 2

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemWidth()I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    return v0
.end method

.method public getNumberOfSmallerOrEqualIndexes(I)I
    .locals 3

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    if-nez v1, :cond_0

    move v0, p1

    :goto_0
    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidthGap:I

    add-int/2addr v1, v2

    div-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_0
    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidth:I

    sub-int v0, v1, p1

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    return v0
.end method

.method public getSelectedIndex()I
    .locals 3

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bAlphabetArrayWithDotsUsed:Z

    if-nez v1, :cond_1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    iget-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    invoke-direct {p0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->isSelectedIndexDot(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget v0, v0, v1

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndexPositionInOrigAlphabet:[I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    aget v0, v0, v1

    goto :goto_0
.end method

.method public hasSubIndex()Z
    .locals 1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    return v0
.end method

.method public isAlphabetInit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    return v0
.end method

.method public removeAllSubIndexes()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->hasSubIndex()Z

    move-result v0

    if-nez v0, :cond_1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    iput-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->removeAllSubIndexes()V

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    iput-object v3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    goto :goto_0
.end method

.method public removeSubIndex()V
    .locals 2

    const/4 v1, -0x1

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->hasSubIndex()Z

    move-result v0

    if-nez v0, :cond_1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedIndex:I

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mOrigSelectedDotIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSubIndexScroll:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;

    invoke-virtual {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->removeSubIndex()V

    goto :goto_0
.end method

.method public resetSelectedIndex()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSelectedIndex:I

    return-void
.end method

.method public setAlphabetArray([Ljava/lang/String;II)V
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArray:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    iput p2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayFirstLetterIndex:I

    iput p3, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetArrayLastLetterIndex:I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    iput-boolean v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mbSetDimensionns:Z

    goto :goto_0
.end method

.method public setDimensionns(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bIsAlphabetInit:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidth:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    if-ne v0, p2, :cond_2

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mbSetDimensionns:Z

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mbSetDimensionns:Z

    iput p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iput p2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z
    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTop:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollTopMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollBottomMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    :cond_3
    iput p2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScreenHeight:I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mAlphabetSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemHeight:F

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorHeight:F

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setBgRectParams()V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mFirstLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSecondLang:Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMinSeparatorHeight:F

    iput v1, v0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll$LangAttributeValues;->separatorHeight:F

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->manageIndexScrollHeight()V

    goto :goto_0
.end method

.method public setEffectText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBigText:Ljava/lang/String;

    return-void
.end method

.method public setIndexScrollViewTheme(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    if-nez v1, :cond_4

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_index_scroll_index_divider_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_index_scroll_index_text_color_dimmed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_index_scroll_index_text_color_pressed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed:I

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_index_scroll_index_text_color_pressed_2nd_act:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed2ndAct:I

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scrollbar_handle_right_bg_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scrollbar_bg_activation_right_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scrollbar_handle_right_bg_activated_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scrollbar_bg_activation_right_2nd_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scrollbar_handle_right_bg_activated_2nd_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-le v1, v4, :cond_1

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scrollbar_handle_bg_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mIsFluid:Z
    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_fluid_scrollbar_handle_right_bg_mtrl:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_index_scroll_index_text_color_dimmed_fluid:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scrollbar_handle_press_bg_mtrl_shape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mScrollThumbBgDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mEnableCustomTheme:Z
    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$2200(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgDrawableDefault:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3100(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3200(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3200(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmSeparatorColor:I
    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3300(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v1

    if-eq v1, v3, :cond_7

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmSeparatorColor:I
    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3300(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v1

    :goto_4
    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmTextColorDimmed:I
    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v1

    if-eq v1, v3, :cond_8

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmTextColorDimmed:I
    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v1

    :goto_5
    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmHandleTextColorPressed:I
    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3500(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v1

    if-eq v1, v3, :cond_9

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmHandleTextColorPressed:I
    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3500(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v1

    :goto_6
    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed:I

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-le v1, v4, :cond_3

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3600(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mCstmBgDrawableDefaultMoreDepth:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$3600(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_7
    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    :cond_3
    :goto_8
    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setBgRectParams()V

    goto/16 :goto_0

    :cond_4
    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_index_scroll_index_divider_color_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_index_scroll_index_text_color_dimmed_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimaryDark:I
    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1800(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed:I

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    # getter for: Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->mColorPrimaryDark:I
    invoke-static {v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1800(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)I

    move-result v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed2ndAct:I

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scrollbar_handle_right_bg_mtrl:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scrollbar_bg_activation_right_mtrl:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scrollbar_handle_right_bg_activated_mtrl:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawablePressed2ndAct:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable2ndAct:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mDepth:I

    if-le v1, v4, :cond_1

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$drawable;->tw_scrollbar_handle_bg_holo_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    :cond_6
    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleBgScrollDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_3

    :cond_7
    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorColor:I

    goto/16 :goto_4

    :cond_8
    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mTextColorDimmed:I

    goto/16 :goto_5

    :cond_9
    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mHandleTextColorPressed:I

    goto :goto_6

    :cond_a
    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    goto :goto_7

    :cond_b
    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$color;->tw_index_scroll_bg_tint_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgTintColor:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgDrawableDefault:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgTintColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/16 :goto_8
.end method

.method public setMaxDepth(I)V
    .locals 0

    iput p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mMaxDepth:I

    return-void
.end method

.method public setPosition(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->m_bSubIndexScrollExists:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mIndexScrollViewTheme:I

    invoke-virtual {p0, v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setIndexScrollViewTheme(I)V

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidth:I

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorWidth:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    :goto_1
    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->setBgRectParams()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mWidthShift:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorLeftPos:I

    goto :goto_1
.end method

.method public setSimpleIndexScrollWidth(I)V
    .locals 0

    if-gtz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mItemWidth:I

    iput p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mSeparatorWidth:I

    iput p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->mBgRectWidth:I

    invoke-direct {p0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$IndexScroll;->allocateBgRectangle()V

    goto :goto_0
.end method
