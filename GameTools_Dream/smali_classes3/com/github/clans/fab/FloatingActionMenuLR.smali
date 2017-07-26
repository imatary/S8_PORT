.class public Lcom/github/clans/fab/FloatingActionMenuLR;
.super Lcom/github/clans/fab/AbsFloatingActionMenu;
.source "FloatingActionMenuLR.java"


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:Landroid/content/res/ColorStateList;

.field private F:F

.field private G:I

.field private H:Z

.field private I:I

.field private J:I

.field private K:I

.field private L:Z

.field private M:I

.field private N:F

.field private O:F

.field private P:F

.field private Q:I

.field private R:I

.field private S:I

.field private T:Landroid/graphics/drawable/Drawable;

.field private U:I

.field private V:Landroid/view/animation/Interpolator;

.field private W:Landroid/view/animation/Interpolator;

.field private aa:Z

.field private ab:Z

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:Z

.field private ah:Landroid/widget/ImageView;

.field private ai:Landroid/view/animation/Animation;

.field private aj:Landroid/view/animation/Animation;

.field private ak:Z

.field private al:Z

.field private am:I

.field private an:Landroid/animation/ValueAnimator;

.field private ao:Landroid/animation/ValueAnimator;

.field private ap:I

.field private aq:I

.field private ar:Landroid/content/Context;

.field private as:Ljava/lang/String;

.field private at:Z

.field l:Landroid/view/GestureDetector;

.field private m:Landroid/animation/AnimatorSet;

.field private n:Landroid/animation/AnimatorSet;

.field private o:Landroid/animation/AnimatorSet;

.field private p:I

.field private q:Lcom/github/clans/fab/FloatingActionButton;

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Landroid/os/Handler;

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/clans/fab/FloatingActionMenuLR;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/clans/fab/FloatingActionMenuLR;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x1

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/clans/fab/AbsFloatingActionMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->m:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->p:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->s:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->t:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->x:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->A:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->B:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->C:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->D:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->G:I

    iput v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->N:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->O:F

    iput v3, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->P:F

    iput-boolean v5, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->aa:Z

    iput-boolean v5, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ag:Z

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/github/clans/fab/FloatingActionMenuLR$1;

    invoke-direct {v2, p0}, Lcom/github/clans/fab/FloatingActionMenuLR$1;-><init>(Lcom/github/clans/fab/FloatingActionMenuLR;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->l:Landroid/view/GestureDetector;

    invoke-direct {p0, p1, p2}, Lcom/github/clans/fab/FloatingActionMenuLR;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->A:I

    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->B:I

    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->C:I

    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->D:I

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu:[I

    invoke-virtual {p1, p2, v0, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_buttonSpacing:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->p:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->p:I

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_labels_margin:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->s:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->s:I

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_labels_position:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->aq:I

    sget v2, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_labels_showAnimation:I

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->aq:I

    if-nez v0, :cond_4

    sget v0, Lcom/naver/glink/android/sdk/R$anim;->fab_slide_in_from_right:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->y:I

    sget v2, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_labels_hideAnimation:I

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->aq:I

    if-nez v0, :cond_5

    sget v0, Lcom/naver/glink/android/sdk/R$anim;->fab_slide_out_to_right:I

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->z:I

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_labels_paddingTop:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->A:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->A:I

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_labels_paddingRight:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->B:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->B:I

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_labels_paddingBottom:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->C:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->C:I

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_labels_paddingLeft:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->D:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->D:I

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_labels_textColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->E:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->E:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->E:Landroid/content/res/ColorStateList;

    :cond_0
    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_labels_textSize:I

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/naver/glink/android/sdk/R$dimen;->labels_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->F:F

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_labels_cornerRadius:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->G:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->G:I

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_labels_showShadow:I

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->H:Z

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_labels_colorNormal:I

    const v2, -0xcccccd

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->I:I

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_labels_colorPressed:I

    const v2, -0xbbbbbc

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->J:I

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_labels_colorRipple:I

    const v2, 0x66ffffff

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->K:I

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_showShadow:I

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->L:Z

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_shadowColor:I

    const/high16 v2, 0x66000000

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->M:I

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_shadowRadius:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->N:F

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->N:F

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_shadowXOffset:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->O:F

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->O:F

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_shadowYOffset:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->P:F

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->P:F

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_colorNormal:I

    const v2, -0x25bcca

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->Q:I

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_colorPressed:I

    const v2, -0x18afbd

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->R:I

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_colorRipple:I

    const v2, -0x66000001

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->S:I

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_animationDelayPerItem:I

    const/16 v2, 0x32

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->U:I

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_icon:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->T:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->T:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/naver/glink/android/sdk/R$drawable;->gl_icon_close_normal:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->T:Landroid/graphics/drawable/Drawable;

    :cond_1
    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_labels_singleLine:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ab:Z

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_labels_ellipsize:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ac:I

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_labels_maxLines:I

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ad:I

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_fab_size:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ae:I

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_labels_style:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->af:I

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_openDirection:I

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->am:I

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_backgroundColor:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ap:I

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_fab_label:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v5, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->at:Z

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_fab_label:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->as:Ljava/lang/String;

    :cond_2
    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_labels_padding:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_labels_padding:I

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/github/clans/fab/FloatingActionMenuLR;->a(I)V

    :cond_3
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->V:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->W:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->af:I

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ar:Landroid/content/Context;

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->h()V

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->j()V

    invoke-direct {p0, v1}, Lcom/github/clans/fab/FloatingActionMenuLR;->a(Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_4
    sget v0, Lcom/naver/glink/android/sdk/R$anim;->fab_slide_in_from_left:I

    goto/16 :goto_0

    :cond_5
    sget v0, Lcom/naver/glink/android/sdk/R$anim;->fab_slide_out_to_left:I

    goto/16 :goto_1
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 2

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_fab_show_animation:I

    sget v1, Lcom/naver/glink/android/sdk/R$anim;->fab_scale_up:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenuLR;->setMenuButtonShowAnimation(Landroid/view/animation/Animation;)V

    sget v0, Lcom/naver/glink/android/sdk/R$styleable;->FloatingActionMenu_menu_fab_hide_animation:I

    sget v1, Lcom/naver/glink/android/sdk/R$anim;->fab_scale_down:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenuLR;->setMenuButtonHideAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic a(Lcom/github/clans/fab/FloatingActionMenuLR;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->al:Z

    return v0
.end method

.method static synthetic a(Lcom/github/clans/fab/FloatingActionMenuLR;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->v:Z

    return p1
.end method

.method private b(I)I
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x3f9eb851eb851eb8L    # 0.03

    mul-double/2addr v0, v2

    int-to-double v2, p1

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method static synthetic b(Lcom/github/clans/fab/FloatingActionMenuLR;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->aa:Z

    return v0
.end method

.method static synthetic b(Lcom/github/clans/fab/FloatingActionMenuLR;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ak:Z

    return p1
.end method

.method static synthetic c(Lcom/github/clans/fab/FloatingActionMenuLR;)Lcom/github/clans/fab/FloatingActionButton;
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    return-object v0
.end method

.method private c(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getLabelText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Lcom/github/clans/fab/Label;

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ar:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/github/clans/fab/Label;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/github/clans/fab/Label;->setClickable(Z)V

    invoke-virtual {v3, p1}, Lcom/github/clans/fab/Label;->setFab(Lcom/github/clans/fab/FloatingActionButton;)V

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->y:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/github/clans/fab/Label;->setShowAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->z:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/github/clans/fab/Label;->setHideAnimation(Landroid/view/animation/Animation;)V

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->af:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->af:I

    invoke-virtual {v3, v0, v1}, Lcom/github/clans/fab/Label;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v3, v5}, Lcom/github/clans/fab/Label;->setShowShadow(Z)V

    invoke-virtual {v3, v4}, Lcom/github/clans/fab/Label;->setUsingStyle(Z)V

    :goto_1
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/github/clans/fab/Label;->setMaxLines(I)V

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/naver/glink/android/sdk/R$dimen;->glink_widget_size_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v3, v0}, Lcom/github/clans/fab/Label;->setMaxWidth(I)V

    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Lcom/github/clans/fab/Label;->setGravity(I)V

    invoke-virtual {v3, v2}, Lcom/github/clans/fab/Label;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/github/clans/fab/Label;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Lcom/github/clans/fab/FloatingActionMenuLR;->addView(Landroid/view/View;)V

    sget v0, Lcom/naver/glink/android/sdk/R$id;->fab_label:I

    invoke-virtual {p1, v0, v3}, Lcom/github/clans/fab/FloatingActionButton;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->I:I

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->J:I

    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->K:I

    invoke-virtual {v3, v0, v1, v4}, Lcom/github/clans/fab/Label;->a(III)V

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->H:Z

    invoke-virtual {v3, v0}, Lcom/github/clans/fab/Label;->setShowShadow(Z)V

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->G:I

    invoke-virtual {v3, v0}, Lcom/github/clans/fab/Label;->setCornerRadius(I)V

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ac:I

    if-lez v0, :cond_2

    invoke-direct {p0, v3}, Lcom/github/clans/fab/FloatingActionMenuLR;->setLabelEllipsize(Lcom/github/clans/fab/Label;)V

    :cond_2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ad:I

    invoke-virtual {v3, v0}, Lcom/github/clans/fab/Label;->setMaxLines(I)V

    invoke-virtual {v3}, Lcom/github/clans/fab/Label;->c()V

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->F:F

    invoke-virtual {v3, v5, v0}, Lcom/github/clans/fab/Label;->setTextSize(IF)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->E:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v0}, Lcom/github/clans/fab/Label;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->D:I

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->A:I

    iget-boolean v4, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->H:Z

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowRadius()I

    move-result v4

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowXOffset()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowRadius()I

    move-result v4

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getShadowYOffset()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    :cond_3
    iget v4, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->D:I

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->A:I

    invoke-virtual {v3, v1, v0, v4, v5}, Lcom/github/clans/fab/Label;->setPadding(IIII)V

    goto/16 :goto_1
.end method

.method static synthetic c(Lcom/github/clans/fab/FloatingActionMenuLR;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/clans/fab/FloatingActionMenuLR;->j(Z)V

    return-void
.end method

.method static synthetic d(Lcom/github/clans/fab/FloatingActionMenuLR;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->aj:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private h()V
    .locals 12

    const-wide/16 v10, 0xc8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ap:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ap:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ap:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ap:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    new-array v4, v8, [I

    aput v6, v4, v6

    aput v0, v4, v7

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->an:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->an:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->an:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/github/clans/fab/FloatingActionMenuLR$3;

    invoke-direct {v5, p0, v1, v2, v3}, Lcom/github/clans/fab/FloatingActionMenuLR$3;-><init>(Lcom/github/clans/fab/FloatingActionMenuLR;III)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v8, [I

    aput v0, v4, v6

    aput v6, v4, v7

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ao:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ao:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ao:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/github/clans/fab/FloatingActionMenuLR$4;

    invoke-direct {v4, p0, v1, v2, v3}, Lcom/github/clans/fab/FloatingActionMenuLR$4;-><init>(Lcom/github/clans/fab/FloatingActionMenuLR;III)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private i()Z
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ap:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 4

    new-instance v0, Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->L:Z

    iput-boolean v1, v0, Lcom/github/clans/fab/FloatingActionButton;->d:Z

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->L:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->N:F

    invoke-static {v1, v2}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->f:I

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->O:F

    invoke-static {v1, v2}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->g:I

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->P:F

    invoke-static {v1, v2}, Lcom/github/clans/fab/a;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->h:I

    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->Q:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->R:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->S:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/clans/fab/FloatingActionButton;->a(III)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->M:I

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->e:I

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ae:I

    iput v1, v0, Lcom/github/clans/fab/FloatingActionButton;->c:I

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->c()V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->as:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setLabelText(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ah:Landroid/widget/ImageView;

    invoke-static {}, Lcom/naver/glink/android/sdk/c;->c()Lcom/naver/glink/android/sdk/configure/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ah:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/configure/d;->a(Landroid/content/res/Resources;ILandroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-super {p0}, Lcom/github/clans/fab/AbsFloatingActionMenu;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/clans/fab/FloatingActionMenuLR;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ah:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenuLR;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->k()V

    return-void
.end method

.method private j(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->b(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ah:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->aj:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ah:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ak:Z

    :cond_1
    return-void
.end method

.method private k()V
    .locals 6

    const-wide/16 v4, 0xc8

    const/4 v3, 0x2

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->am:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->aq:I

    if-nez v0, :cond_0

    :cond_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->aq:I

    if-nez v0, :cond_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ah:Landroid/widget/ImageView;

    const-string/jumbo v1, "rotation"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ah:Landroid/widget/ImageView;

    const-string/jumbo v2, "rotation"

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->m:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->V:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->n:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->W:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-void

    :cond_2
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->aq:I

    if-nez v0, :cond_3

    :cond_3
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->aq:I

    if-nez v0, :cond_1

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x43340000    # 180.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x43340000    # 180.0f
        0x0
    .end array-data
.end method

.method private k(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->a(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ah:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ai:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ah:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private l()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->u:I

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionMenuLR;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ah:Landroid/widget/ImageView;

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionMenuLR;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    sget v2, Lcom/naver/glink/android/sdk/R$id;->fab_label:I

    invoke-virtual {v0, v2}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/github/clans/fab/FloatingActionMenuLR;->c(Lcom/github/clans/fab/FloatingActionButton;)V

    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    new-instance v2, Lcom/github/clans/fab/FloatingActionMenuLR$5;

    invoke-direct {v2, p0}, Lcom/github/clans/fab/FloatingActionMenuLR$5;-><init>(Lcom/github/clans/fab/FloatingActionMenuLR;)V

    invoke-virtual {v0, v2}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setLabelEllipsize(Lcom/github/clans/fab/Label;)V
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ac:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/Label;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public a(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->u:I

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, p1, v0}, Lcom/github/clans/fab/FloatingActionMenuLR;->addView(Landroid/view/View;I)V

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->u:I

    invoke-direct {p0, p1}, Lcom/github/clans/fab/FloatingActionMenuLR;->c(Lcom/github/clans/fab/FloatingActionButton;)V

    return-void
.end method

.method public a(Lcom/github/clans/fab/FloatingActionButton;I)V
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->u:I

    add-int/lit8 v0, v0, -0x2

    if-gez p2, :cond_1

    const/4 p2, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/github/clans/fab/FloatingActionMenuLR;->addView(Landroid/view/View;I)V

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->u:I

    invoke-direct {p0, p1}, Lcom/github/clans/fab/FloatingActionMenuLR;->c(Lcom/github/clans/fab/FloatingActionButton;)V

    return-void

    :cond_1
    if-le p2, v0, :cond_0

    move p2, v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenuLR;->c(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenuLR;->b(Z)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->v:Z

    return v0
.end method

.method protected b()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public b(Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 1

    invoke-virtual {p1}, Lcom/github/clans/fab/FloatingActionButton;->getLabelView()Lcom/github/clans/fab/Label;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenuLR;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenuLR;->removeView(Landroid/view/View;)V

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->u:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->u:I

    return-void
.end method

.method public b(Z)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->a()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ag:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->o:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->w:Z

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v2, v1

    :goto_1
    if-ltz v4, :cond_3

    invoke-virtual {p0, v4}, Lcom/github/clans/fab/FloatingActionMenuLR;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/github/clans/fab/FloatingActionButton;

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_6

    add-int/lit8 v3, v1, 0x1

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    iget-boolean v1, v0, Lcom/github/clans/fab/FloatingActionButton;->j:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x50

    :goto_2
    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->x:Landroid/os/Handler;

    new-instance v6, Lcom/github/clans/fab/FloatingActionMenuLR$6;

    invoke-direct {v6, p0, v0, p1}, Lcom/github/clans/fab/FloatingActionMenuLR$6;-><init>(Lcom/github/clans/fab/FloatingActionMenuLR;Lcom/github/clans/fab/FloatingActionButton;Z)V

    int-to-long v0, v1

    invoke-virtual {v5, v6, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->U:I

    add-int/2addr v2, v0

    move v0, v3

    :goto_3
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->x:Landroid/os/Handler;

    new-instance v2, Lcom/github/clans/fab/FloatingActionMenuLR$7;

    invoke-direct {v2, p0}, Lcom/github/clans/fab/FloatingActionMenuLR$7;-><init>(Lcom/github/clans/fab/FloatingActionMenuLR;)V

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->U:I

    mul-int/2addr v1, v3

    int-to-long v4, v1

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method public c(Z)V
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_0
    iget-boolean v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ag:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->o:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->w:Z

    move v1, v0

    move v2, v0

    move v3, v0

    :goto_1
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionMenuLR;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Lcom/github/clans/fab/FloatingActionButton;

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    iget-object v4, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->x:Landroid/os/Handler;

    new-instance v5, Lcom/github/clans/fab/FloatingActionMenuLR$8;

    invoke-direct {v5, p0, v0, p1}, Lcom/github/clans/fab/FloatingActionMenuLR$8;-><init>(Lcom/github/clans/fab/FloatingActionMenuLR;Lcom/github/clans/fab/FloatingActionButton;Z)V

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->U:I

    add-int/2addr v3, v0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->x:Landroid/os/Handler;

    new-instance v1, Lcom/github/clans/fab/FloatingActionMenuLR$9;

    invoke-direct {v1, p0}, Lcom/github/clans/fab/FloatingActionMenuLR$9;-><init>(Lcom/github/clans/fab/FloatingActionMenuLR;)V

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->U:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->aa:Z

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method public d(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ai:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenuLR;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenuLR;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ag:Z

    return v0
.end method

.method public e(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ak:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ak:Z

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenuLR;->c(Z)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->x:Landroid/os/Handler;

    new-instance v1, Lcom/github/clans/fab/FloatingActionMenuLR$10;

    invoke-direct {v1, p0, p1}, Lcom/github/clans/fab/FloatingActionMenuLR$10;-><init>(Lcom/github/clans/fab/FloatingActionMenuLR;Z)V

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->U:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->u:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->aj:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenuLR;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenuLR;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ak:Z

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenuLR;->d(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenuLR;->e(Z)V

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->i()Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenuLR;->c(Z)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/github/clans/fab/FloatingActionMenuLR;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ah:Landroid/widget/ImageView;

    if-eq v0, v3, :cond_0

    instance-of v3, v0, Lcom/github/clans/fab/FloatingActionButton;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenuLR;->b(Lcom/github/clans/fab/FloatingActionButton;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public g(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/github/clans/fab/FloatingActionMenuLR;->k(Z)V

    :cond_0
    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->b()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenuLR;->a(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenuLR;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAnimationDelayPerItem()I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->U:I

    return v0
.end method

.method public getIconToggleAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->o:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public getMenuButtonColorNormal()I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->Q:I

    return v0
.end method

.method public getMenuButtonColorPressed()I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->R:I

    return v0
.end method

.method public getMenuButtonColorRipple()I
    .locals 1

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->S:I

    return v0
.end method

.method public getMenuButtonLabelText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->as:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuIconView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ah:Landroid/widget/ImageView;

    return-object v0
.end method

.method public h(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ak:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ak:Z

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenuLR;->c(Z)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->x:Landroid/os/Handler;

    new-instance v1, Lcom/github/clans/fab/FloatingActionMenuLR$2;

    invoke-direct {v1, p0, p1}, Lcom/github/clans/fab/FloatingActionMenuLR$2;-><init>(Lcom/github/clans/fab/FloatingActionMenuLR;Z)V

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->U:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->u:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/github/clans/fab/FloatingActionMenuLR;->j(Z)V

    goto :goto_0
.end method

.method public i(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenuLR;->g(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/clans/fab/FloatingActionMenuLR;->h(Z)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/github/clans/fab/AbsFloatingActionMenu;->onFinishInflate()V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenuLR;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ah:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/github/clans/fab/FloatingActionMenuLR;->bringChildToFront(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->u:I

    invoke-direct {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->l()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->aq:I

    if-nez v0, :cond_1

    sub-int v0, p4, p2

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->r:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    move v3, v0

    :goto_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->am:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    move v4, v0

    :goto_1
    div-int/lit8 v0, p5, 0x2

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v1}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v9, v0, v1

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p4, v0

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_2
    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v2}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v5, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v5}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v9

    invoke-virtual {v1, v0, v9, v2, v5}, Lcom/github/clans/fab/FloatingActionButton;->layout(IIII)V

    const/high16 v1, 0x42580000    # 54.0f

    invoke-static {v1}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v2

    const/high16 v1, 0x42580000    # 54.0f

    invoke-static {v1}, Lcom/naver/glink/android/sdk/a/s;->a(F)I

    move-result v5

    if-eqz v4, :cond_4

    sub-int v1, p4, v2

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getPaddingRight()I

    move-result v6

    sub-int/2addr v1, v6

    :goto_3
    iget-object v6, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ah:Landroid/widget/ImageView;

    add-int/2addr v2, v1

    add-int/2addr v5, v9

    invoke-virtual {v6, v1, v9, v2, v5}, Landroid/widget/ImageView;->layout(IIII)V

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v1}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v9

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->p:I

    add-int/2addr v1, v2

    :cond_0
    if-eqz v4, :cond_5

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v1}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->p:I

    add-int/2addr v0, v1

    :goto_4
    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->u:I

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    move v7, v0

    :goto_5
    if-ltz v8, :cond_12

    invoke-virtual {p0, v8}, Lcom/github/clans/fab/FloatingActionMenuLR;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ah:Landroid/widget/ImageView;

    if-ne v1, v0, :cond_6

    move v0, v7

    :goto_6
    add-int/lit8 v1, v8, -0x1

    move v8, v1

    move v7, v0

    goto :goto_5

    :cond_1
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->r:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    move v3, v0

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getPaddingLeft()I

    move-result v0

    goto :goto_2

    :cond_4
    div-int/lit8 v1, v2, 0x2

    sub-int v1, v3, v1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    move-object v0, v1

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_7

    move v0, v7

    goto :goto_6

    :cond_7
    if-eqz v4, :cond_a

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v7, v2

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->p:I

    sub-int/2addr v2, v5

    :goto_7
    iget-boolean v5, v0, Lcom/github/clans/fab/FloatingActionButton;->j:Z

    if-eqz v5, :cond_13

    if-eqz v4, :cond_b

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->p:I

    add-int/lit8 v2, v2, 0x0

    :goto_8
    move v5, v2

    :goto_9
    iget-object v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    if-eq v0, v2, :cond_8

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v9

    invoke-virtual {v0, v5, v9, v2, v6}, Lcom/github/clans/fab/FloatingActionButton;->layout(IIII)V

    iget-boolean v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->w:Z

    if-nez v2, :cond_8

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/github/clans/fab/FloatingActionButton;->b(Z)V

    :cond_8
    sget v2, Lcom/naver/glink/android/sdk/R$id;->fab_label:I

    invoke-virtual {v0, v2}, Lcom/github/clans/fab/FloatingActionButton;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_9

    iget-boolean v6, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->at:Z

    if-eqz v6, :cond_c

    iget v6, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->r:I

    div-int/lit8 v6, v6, 0x2

    :goto_a
    iget v10, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->s:I

    add-int/2addr v6, v10

    iget v10, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->aq:I

    if-nez v10, :cond_d

    sub-int v6, v3, v6

    :goto_b
    iget v10, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->aq:I

    if-nez v10, :cond_e

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v6, v10

    :goto_c
    add-int v6, v5, v5

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v6, v10

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v6, v10

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v6

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v9

    iget v12, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->s:I

    add-int/2addr v11, v12

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v11

    invoke-virtual {v2, v6, v11, v10, v12}, Landroid/view/View;->layout(IIII)V

    iget-boolean v6, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->w:Z

    if-nez v6, :cond_9

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-boolean v0, v0, Lcom/github/clans/fab/FloatingActionButton;->j:Z

    if-eqz v0, :cond_f

    move v0, v7

    goto/16 :goto_6

    :cond_a
    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->p:I

    add-int/2addr v2, v7

    goto :goto_7

    :cond_b
    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v2

    sub-int v2, p4, v2

    iget v5, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->p:I

    sub-int/2addr v2, v5

    goto :goto_8

    :cond_c
    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionButton;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    goto :goto_a

    :cond_d
    add-int/2addr v6, v3

    goto :goto_b

    :cond_e
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v6, v10

    goto :goto_c

    :cond_f
    if-eqz v4, :cond_10

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->p:I

    sub-int v0, v5, v0

    :goto_d
    if-eqz v4, :cond_11

    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->p:I

    sub-int v1, v9, v1

    goto/16 :goto_6

    :cond_10
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v5

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->p:I

    add-int/2addr v0, v2

    goto :goto_d

    :cond_11
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v9

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->p:I

    add-int/2addr v1, v2

    goto/16 :goto_6

    :cond_12
    return-void

    :cond_13
    move v5, v2

    goto/16 :goto_9
.end method

.method protected onMeasure(II)V
    .locals 11

    const/4 v8, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->r:I

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ah:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/github/clans/fab/FloatingActionMenuLR;->measureChildWithMargins(Landroid/view/View;IIII)V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->u:I

    if-ge v6, v0, :cond_2

    invoke-virtual {p0, v6}, Lcom/github/clans/fab/FloatingActionMenuLR;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ah:Landroid/widget/ImageView;

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/github/clans/fab/FloatingActionMenuLR;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->r:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->r:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    move v6, v0

    move v0, v8

    :goto_2
    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->u:I

    if-ge v6, v1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {p0, v6}, Lcom/github/clans/fab/FloatingActionMenuLR;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ah:Landroid/widget/ImageView;

    if-ne v2, v3, :cond_3

    move v1, v7

    move v2, v0

    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v7, v1

    move v0, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v9, v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v8, v0, v1

    sget v0, Lcom/naver/glink/android/sdk/R$id;->fab_label:I

    invoke-virtual {v2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/clans/fab/Label;

    if-eqz v1, :cond_8

    iget v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->r:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v0, v3

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->at:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    div-int v10, v3, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v1}, Lcom/github/clans/fab/Label;->a()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->s:I

    add-int/2addr v0, v2

    add-int v3, v0, v10

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/github/clans/fab/FloatingActionMenuLR;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v1}, Lcom/github/clans/fab/Label;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v9

    add-int/2addr v0, v10

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v1, v7

    move v2, v8

    goto :goto_3

    :cond_4
    const/4 v0, 0x2

    goto :goto_4

    :cond_5
    iget v1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->r:I

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->s:I

    add-int/2addr v2, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->p:I

    iget v3, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->u:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/github/clans/fab/FloatingActionMenuLR;->b(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_7

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/github/clans/fab/FloatingActionMenuLR;->getDefaultSize(II)I

    move-result v0

    :goto_5
    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/github/clans/fab/FloatingActionMenuLR;->getDefaultSize(II)I

    move-result v1

    :goto_6
    invoke-virtual {p0, v0, v1}, Lcom/github/clans/fab/FloatingActionMenuLR;->setMeasuredDimension(II)V

    return-void

    :cond_6
    move v1, v2

    goto :goto_6

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    move v1, v7

    move v2, v8

    goto/16 :goto_3

    :cond_9
    move v1, v7

    move v2, v0

    goto/16 :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->al:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->l:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/github/clans/fab/AbsFloatingActionMenu;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAnimated(Z)V
    .locals 7

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x0

    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->aa:Z

    iget-object v6, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->m:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_0

    move-wide v0, v2

    :goto_0
    invoke-virtual {v6, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->n:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-void

    :cond_0
    move-wide v0, v4

    goto :goto_0

    :cond_1
    move-wide v2, v4

    goto :goto_1
.end method

.method public setAnimationDelayPerItem(I)V
    .locals 0

    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->U:I

    return-void
.end method

.method public setClosedOnTouchOutside(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->al:Z

    return-void
.end method

.method public setIconAnimated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ag:Z

    return-void
.end method

.method public setIconAnimationCloseInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setIconAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setIconAnimationOpenInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setIconToggleAnimatorSet(Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->o:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public setMenuButtonColorNormal(I)V
    .locals 1

    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->Q:I

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorNormal(I)V

    return-void
.end method

.method public setMenuButtonColorNormalResId(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->Q:I

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorNormalResId(I)V

    return-void
.end method

.method public setMenuButtonColorPressed(I)V
    .locals 1

    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->R:I

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorPressed(I)V

    return-void
.end method

.method public setMenuButtonColorPressedResId(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->R:I

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorPressedResId(I)V

    return-void
.end method

.method public setMenuButtonColorRipple(I)V
    .locals 1

    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->S:I

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorRipple(I)V

    return-void
.end method

.method public setMenuButtonColorRippleResId(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/github/clans/fab/FloatingActionMenuLR;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->S:I

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setColorRippleResId(I)V

    return-void
.end method

.method public setMenuButtonHideAnimation(Landroid/view/animation/Animation;)V
    .locals 1

    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->aj:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setHideAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setMenuButtonLabelText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setLabelText(Ljava/lang/String;)V

    return-void
.end method

.method public setMenuButtonShowAnimation(Landroid/view/animation/Animation;)V
    .locals 1

    iput-object p1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->ai:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setShowAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setOnMenuButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->q:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOpenDirection(I)V
    .locals 0

    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->am:I

    return-void
.end method

.method public setOpenLabel(I)V
    .locals 0

    iput p1, p0, Lcom/github/clans/fab/FloatingActionMenuLR;->aq:I

    return-void
.end method
