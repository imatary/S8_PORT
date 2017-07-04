.class public Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SharedFriendsListNewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShrdFrdsListNewAdapter"

.field private static final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final FEATURE_IS_NOS:Z

.field private final FEATURE_SUPPORT_PHOTO_ID_OPEN_THEME:Z

.field private final mChannelID:I

.field private final mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mIconSize:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsSelectionMode:Z

.field private mMyNumber:Ljava/lang/String;

.field private mOwner:Ljava/lang/Integer;

.field private mScreenID:Ljava/lang/String;

.field private mSharedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

.field private ugci:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$1;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$1;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportPhotoIdOpenTheme:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->FEATURE_SUPPORT_PHOTO_ID_OPEN_THEME:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->FEATURE_IS_NOS:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSharedList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSmsList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->ugci:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mOwner:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mMyNumber:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mIsSelectionMode:Z

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0c0152

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput p2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mChannelID:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mIconSize:I

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSharedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mScreenID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->ugci:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->showSendLinkDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->startSendNewWebUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->sendNewWebUrl(Ljava/lang/String;Z)V

    return-void
.end method

.method private getViewLayout(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    const v0, 0x7f1201b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$002(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    const v0, 0x7f1201aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$202(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    const v0, 0x7f1201ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$302(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    const v0, 0x7f1201ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$102(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    const v0, 0x7f1201af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$402(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    const v0, 0x7f1201b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$502(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    const v0, 0x7f1201ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$602(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->FEATURE_IS_NOS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$600(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$300(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$000(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/ContactPhotoUtil;->updateShapeCheckBox(Landroid/content/Context;Landroid/widget/CheckBox;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    const v0, 0x7f1201b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$702(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    const v0, 0x7f1201b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$802(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    const v0, 0x7f1201b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$902(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private sendNewWebUrl(Ljava/lang/String;Z)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->checkValidConnetion(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mChannelID:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->sendNewWebUrl(Landroid/content/Context;ILjava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method private setAdapterView(Ljava/lang/Integer;ILjava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/16 v3, 0x8

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSharedList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSharedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSharedList:Ljava/util/ArrayList;

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    iget v1, v1, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mStatus:I

    if-ne v1, v6, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->FEATURE_IS_NOS:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$300(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$400(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$500(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mIsSelectionMode:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$700(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$800(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->FEATURE_IS_NOS:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$600(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$700(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$2;

    invoke-direct {v2, p0, p2}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$2;-><init>(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$700(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$600(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSharedList:Ljava/util/ArrayList;

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    iget v1, v1, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$600(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->FEATURE_IS_NOS:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$300(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$400(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$500(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$700(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$800(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v6, :cond_0

    move-object v0, p3

    const-string/jumbo v1, "+"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSmsList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSmsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->setExpireText(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mIsSelectionMode:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$800(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$800(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$3;

    invoke-direct {v2, p0, p3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$3;-><init>(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$600(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->FEATURE_IS_NOS:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$300(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$400(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$500(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$700(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$800(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setContactImage(Ljava/lang/String;I)Z
    .locals 7

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4, p1}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getContactPhotoByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    const/4 v2, 0x1

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->FEATURE_SUPPORT_PHOTO_ID_OPEN_THEME:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4, p2}, Lcom/sec/samsung/gallery/util/ContactPhotoUtil;->getSenderShapeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$200(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f020081

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    iget v4, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mIconSize:I

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->FEATURE_SUPPORT_PHOTO_ID_OPEN_THEME:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4, v0, v6}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getShapeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$900(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4, v0, v6}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getCircleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2
.end method

.method private setContactInfo(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->setContactImage(Ljava/lang/String;I)Z

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->setContactName(ZLjava/lang/String;I)V

    return-void
.end method

.method private setContactName(ZLjava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_8

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2, p2}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getContactNameByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2, p2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getDuid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNamewithDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSharedList:Ljava/util/ArrayList;

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    iget-object v0, v2, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mName:Ljava/lang/String;

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a0496

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$100(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$900(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$900(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->FEATURE_SUPPORT_PHOTO_ID_OPEN_THEME:Z

    if-eqz v2, :cond_9

    invoke-static {p3}, Lcom/sec/samsung/gallery/util/ContactPhotoUtil;->getPhotoMaskingShape(I)I

    move-result v2

    :goto_1
    invoke-virtual {v5, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$900(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_2
    return-void

    :cond_8
    move-object v0, v3

    goto/16 :goto_0

    :cond_9
    const v2, 0x7f02012d

    goto :goto_1

    :cond_a
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$900(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$900(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private setExpireText(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->ugci:Ljava/lang/String;

    invoke-static {v3, v6, p1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getExpiredTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0a0191

    invoke-virtual {v3, v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$500(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$500(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setMyProfile()V
    .locals 9

    const/4 v8, 0x4

    const/16 v7, 0x8

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$900(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$900(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->FEATURE_SUPPORT_PHOTO_ID_OPEN_THEME:Z

    if-eqz v3, :cond_1

    invoke-static {v6}, Lcom/sec/samsung/gallery/util/ContactPhotoUtil;->getPhotoMaskingShape(I)I

    move-result v3

    :goto_0
    invoke-virtual {v5, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$900(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->FEATURE_SUPPORT_PHOTO_ID_OPEN_THEME:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3, v6}, Lcom/sec/samsung/gallery/util/ContactPhotoUtil;->getSenderShapeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$200(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$100(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0a0256

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->FEATURE_IS_NOS:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$300(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$400(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$700(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$800(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->FEATURE_IS_NOS:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$600(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void

    :cond_1
    const v3, 0x7f02012d

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f020081

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mIconSize:I

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->FEATURE_SUPPORT_PHOTO_ID_OPEN_THEME:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3, v0, v6}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getShapeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_3
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$900(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3, v0, v6}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getCircleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$600(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private showSendLinkDialog(Ljava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a03b3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0258

    new-instance v3, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$5;

    invoke-direct {v3, p0, p1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$5;-><init>(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0080

    new-instance v3, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$4;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$4;-><init>(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private sortShareContactNameIfNotExist()V
    .locals 6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSharedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    if-eqz v2, :cond_0

    iget-boolean v4, v2, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mIsMyProfile:Z

    if-nez v4, :cond_0

    iget-object v0, v2, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mName:Ljava/lang/String;

    iget-object v1, v2, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mPhoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4, v1}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getContactNameByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4, v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getDuid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNamewithDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a0496

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    iput-object v0, v2, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSharedList:Ljava/util/ArrayList;

    sget-object v4, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private startSendNewWebUrl(Ljava/lang/String;)V
    .locals 7

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/util/EventShareWifiOnlySwitch;->isOn(Landroid/content/Context;)Z

    move-result v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f0a00b3

    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a00b1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a00ad

    new-instance v6, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$7;

    invoke-direct {v6, p0, p1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$7;-><init>(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0080

    new-instance v6, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$6;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$6;-><init>(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void

    :cond_0
    const v2, 0x7f0a00b2

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->sendNewWebUrl(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private updateGuideTextForSmsMembers()V
    .locals 6

    const/16 v5, 0x8

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f120241

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSharedList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSharedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSharedList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSharedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    iget v3, v3, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSelectionMode(ILandroid/widget/ListView;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSharedList:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    iget v0, v0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$000(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$100(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x3ebd70a4    # 0.37f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$000(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$000(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$700(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$800(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$000(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSharedList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSharedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    const-string/jumbo v1, "ShrdFrdsListNewAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCount is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    const-string/jumbo v0, "ShrdFrdsListNewAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getItem ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSharedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSharedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
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

.method public getSelectionMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mIsSelectionMode:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400a0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->getViewLayout(Landroid/view/View;)V

    :goto_0
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mIsSelectionMode:Z

    if-eqz v1, :cond_2

    check-cast p3, Landroid/widget/ListView;

    invoke-direct {p0, p1, p3}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->updateSelectionMode(ILandroid/widget/ListView;)V

    :goto_1
    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->setMyProfile()V

    :cond_0
    :goto_2
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$000(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$100(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$000(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mViewHolder:Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;->access$000(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSharedList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    iget-object v0, v1, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mPhoneNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mMyNumber:Ljava/lang/String;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mMyNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p2, 0x0

    goto :goto_2

    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->setContactInfo(Ljava/lang/String;I)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mOwner:Ljava/lang/Integer;

    invoke-direct {p0, v1, p1, v0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->setAdapterView(Ljava/lang/Integer;ILjava/lang/String;)V

    goto :goto_2
.end method

.method public refresh()V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mChannelID:I

    const-string/jumbo v4, "ugci"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->ugci:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->ugci:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->ugci:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->ugci:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getContactList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSharedList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSharedList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSharedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSharedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForNormal;->setTitle(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->sortShareContactNameIfNotExist()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->notifyDataSetChanged()V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mChannelID:I

    const-string/jumbo v4, "owner"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mOwner:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->ugci:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->checkChannelContactExpired(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mSmsList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mMyNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mContext:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mScreenID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->updateGuideTextForSmsMembers()V

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/ActivityState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    goto :goto_0
.end method

.method public setSelectionMode()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mIsSelectionMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->mIsSelectionMode:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListNewAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
