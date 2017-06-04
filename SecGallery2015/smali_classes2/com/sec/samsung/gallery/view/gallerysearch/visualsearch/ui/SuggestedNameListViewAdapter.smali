.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SuggestedNameListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;,
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListViewHolder;,
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListObserver;
    }
.end annotation


# static fields
.field private static final CONTACT_PROJECTION:[Ljava/lang/String;

.field private static final DEFAULT_LOAD_COUNT:I = 0x5

.field private static final INDEX_DISPLAY_NAME:I = 0x0

.field private static final INDEX_NAME_RAW_CONTACT_ID:I = 0x1

.field private static final INDEX_PHOTO_ID:I = 0x2

.field private static final ORDER_BY:Ljava/lang/String; = "times_used DESC limit "

.field private static final TAG:Ljava/lang/String; = "SuggestedNameLVA"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsMeExist:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestedNameListObserver:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "name_raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->CONTACT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mIsMeExist:Z

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListObserver;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mSuggestedNameListObserver:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListObserver;

    return-object v0
.end method

.method private updateSuggestedNameList()V
    .locals 25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    const/16 v21, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "times_used DESC limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mIsMeExist:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_FREQUENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "SuggestedNameLVA"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    if-eqz v21, :cond_1

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-gtz v2, :cond_5

    const/4 v14, 0x1

    :goto_1
    new-instance v9, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v14}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;Ljava/lang/String;JZ)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mIsMeExist:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v15, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0256

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, 0x0

    const/16 v20, 0x1

    move-object/from16 v16, p0

    invoke-direct/range {v15 .. v20}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;Ljava/lang/String;JZ)V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mItems:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->notifyDataSetChanged()V

    const-string/jumbo v2, "SuggestedNameLVA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Updated suggested name list in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v22

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mSuggestedNameListObserver:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListObserver;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mSuggestedNameListObserver:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListObserver;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListObserver;->onChanged()V

    :cond_3
    return-void

    :cond_4
    const/4 v2, 0x4

    goto/16 :goto_0

    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListViewHolder;

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04011b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListViewHolder;

    invoke-direct {v1, p0, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListViewHolder;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;

    if-nez v0, :cond_2

    const/4 p2, 0x0

    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListViewHolder;

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v2, v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListViewHolder;->mTextView:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v2, v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListViewHolder;->mItemLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListViewHolder;->mItemLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$2;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$2;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListViewHolder;->mItemLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$3;

    invoke-direct {v3, p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$3;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$ContactInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_1
.end method

.method public loadData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mIsMeExist:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->updateSuggestedNameList()V

    return-void
.end method

.method public registerSuggestedNameListObserver(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter;->mSuggestedNameListObserver:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/SuggestedNameListViewAdapter$SuggestedNameListObserver;

    return-void
.end method
