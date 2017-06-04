.class public Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SharedFriendsListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SharedFriendListAdapter"


# instance fields
.field private final mChannelID:I

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

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

.field private ugci:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mSharedList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->ugci:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0152

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput p2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mChannelID:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->refresh()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mSharedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->ugci:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mSharedList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mSharedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    const-string/jumbo v1, "SharedFriendListAdapter"

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

    const-string/jumbo v0, "SharedFriendListAdapter"

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

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mSharedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mSharedList:Ljava/util/ArrayList;

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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b0088

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    if-nez p2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f04009f

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v18, 0x7f1201aa

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v18, 0x7f1201ab

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v18, 0x7f1201ae

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v18, 0x7f1201af

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const v18, 0x7f1201ac

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    const v18, 0x7f1201b0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-nez p1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f02007e

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_0
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v18, 0x7f0a0256

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v18, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_1
    return-object p2

    :cond_2
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v4, v8, v0}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v4, v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getCircleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v0, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mSharedList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, p1, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getMyNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    if-eqz v15, :cond_4

    invoke-virtual {v15, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 p2, 0x0

    goto :goto_1

    :cond_4
    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getContactPhotoByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_2
    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f02007e

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_3
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Lcom/sec/samsung/gallery/access/contact/ContactProvider;->getContactNameByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_4
    if-nez v11, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getDuid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getNamewithDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mSharedList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, p1, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mName:Ljava/lang/String;

    :cond_6
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_a

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mChannelID:I

    move/from16 v19, v0

    const-string/jumbo v20, "owner"

    invoke-static/range {v18 .. v20}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    if-eqz v10, :cond_1

    if-eqz v15, :cond_1

    invoke-virtual {v15, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mSharedList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, p1, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mStatus:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    if-eqz v14, :cond_b

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v18, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v18, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter$1;-><init>(Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;I)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_8
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v4, v8, v0}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v4, v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getCircleBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v0, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0a0496

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mSharedList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, p1, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mStatus:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public refresh()V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mChannelID:I

    const-string/jumbo v4, "ugci"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->ugci:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->ugci:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->ugci:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->ugci:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getContactList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mSharedList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/ActivityState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mSharedList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mSharedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->mSharedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/adapter/SharedFriendsListAdapter;->notifyDataSetChanged()V

    :cond_1
    instance-of v2, v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbar;->setTitle(I)V

    :cond_2
    return-void
.end method
