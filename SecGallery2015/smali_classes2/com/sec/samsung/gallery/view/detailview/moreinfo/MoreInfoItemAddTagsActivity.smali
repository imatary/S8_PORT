.class public Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;
.super Landroid/app/Activity;
.source "MoreInfoItemAddTagsActivity.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;
.implements Ljava/util/Observer;


# static fields
.field private static final MAX_INPUT_TAG_LENGTH:I = 0x32

.field private static final SAVE_BUTTON_ALPHA_DISABLED:F = 0.4f

.field private static final SAVE_BUTTON_ALPHA_ENABLED:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "MoreInfoItemAddTagsAct"


# instance fields
.field private mAddTagsAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

.field private mContextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

.field private mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

.field private mEditText:Landroid/widget/EditText;

.field private final mLengthFilter:Landroid/text/InputFilter$LengthFilter;

.field private mLongTextToast:Landroid/widget/Toast;

.field private mMediaItemId:I

.field private mMyTagsSubHeader:Landroid/widget/LinearLayout;

.field private mSaveBtn:Landroid/widget/LinearLayout;

.field private final mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mMediaItemId:I

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mAddTagsAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mSaveBtn:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mMyTagsSubHeader:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity$1;

    const/16 v1, 0x32

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;I)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mLengthFilter:Landroid/text/InputFilter$LengthFilter;

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity$4;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mLongTextToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mLongTextToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mContextReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->closeSoftInputFromWindow()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->handleAddTags(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->updateMyTagsVisibility(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->updateSaveButton(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;)Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mAddTagsAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    return-object v0
.end method

.method private closeSoftInputFromWindow()V
    .locals 3

    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private handleAddTags(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "add_tag_value"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "DC_OPERATION_FROM_BIXBY"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->closeSoftInputFromWindow()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->finish()V

    return-void

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method

.method private handleDCAddTags(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->handleAddTags(Ljava/lang/String;)V

    return-void
.end method

.method private setBtnClickListener()V
    .locals 3

    const v1, 0x7f120078

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f12007a

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mSaveBtn:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mSaveBtn:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity$3;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity$3;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->updateSaveButton(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setListView()V
    .locals 2

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mAddTagsAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    const v1, 0x7f12008b

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mAddTagsAdapter:Lcom/sec/samsung/gallery/view/detailview/moreinfo/AddTagsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private setShowButtonShapeOnBG()V
    .locals 4

    const v3, 0x7f020253

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f120078

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f12007a

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method private updateMyTagsVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mMyTagsSubHeader:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mMyTagsSubHeader:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mMyTagsSubHeader:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSaveButton(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mSaveBtn:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mSaveBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mSaveBtn:Landroid/widget/LinearLayout;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method public getDCScreenStateId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AddTag"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getNextExpectedState(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/16 v7, 0x400

    const/4 v6, 0x0

    const/4 v4, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mContextReference:Ljava/lang/ref/WeakReference;

    const v3, 0x7f04002a

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->setShowButtonShapeOnBG()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "media_id_key"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mMediaItemId:I

    :cond_0
    iget v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mMediaItemId:I

    if-ne v3, v4, :cond_2

    if-eqz v1, :cond_1

    const-string/jumbo v3, "return_tag"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->finish()V

    :cond_2
    const v3, 0x7f12008a

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mMyTagsSubHeader:Landroid/widget/LinearLayout;

    const v3, 0x7f120089

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mEditText:Landroid/widget/EditText;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mLengthFilter:Landroid/text/InputFilter$LengthFilter;

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->setBtnClickListener()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->setListView()V

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->updateStatusBarColor(Landroid/view/Window;Landroid/content/Context;)V

    :goto_0
    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/samsung/android/devicecog/gallery/DeviceCogAddTagsActivityListenerImpl;

    invoke-direct {v3, p0, p0}, Lcom/samsung/android/devicecog/gallery/DeviceCogAddTagsActivityListenerImpl;-><init>(Landroid/app/Activity;Lcom/samsung/android/devicecog/gallery/DCCommandExecutable;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    new-instance v3, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AddTagsActivityDCHandler;

    invoke-direct {v3, p0, p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AddTagsActivityDCHandler;-><init>(Landroid/app/Activity;Ljava/util/Observer;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method public onDCCommandStarted(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AbstractDCHandler;->startCommand(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDCParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->mDeviceCogActivityListener:Lcom/samsung/android/devicecog/DeviceCogActivityListener;

    invoke-interface {v0}, Lcom/samsung/android/devicecog/DeviceCogActivityListener;->onDeviceCogActivityResume()V

    :cond_0
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    const-string/jumbo v3, "MoreInfoItemAddTagsAct"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Event update ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_ADD_TAGS:I

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;->handleDCAddTags(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
