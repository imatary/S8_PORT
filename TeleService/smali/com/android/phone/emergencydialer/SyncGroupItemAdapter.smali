.class public Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "SyncGroupItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;,
        Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final GRID_MAX_COUNT:I

.field private final INVALID_ID:I

.field private final INVALID_LONG_ID:J

.field mContext:Landroid/content/Context;

.field private final mEmergencyContactListAlways:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mEmergencyContactListByContactId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mInitLocList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mListView:Landroid/widget/GridView;

.field public mLocList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPosDraging:I

.field private mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;


# direct methods
.method static synthetic -wrap0(Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->refreshView(J)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/GridView;Landroid/content/Context;Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->INVALID_LONG_ID:J

    iput v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->INVALID_ID:I

    const/16 v0, 0x1a

    iput v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->GRID_MAX_COUNT:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mInitLocList:Ljava/util/List;

    iput v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mPosDraging:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mEmergencyContactListByContactId:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mEmergencyContactListAlways:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mListView:Landroid/widget/GridView;

    iput-object p2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    return-void
.end method

.method private refreshView(J)V
    .locals 11

    iget-object v7, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mListView:Landroid/widget/GridView;

    invoke-virtual {v7}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v7, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mListView:Landroid/widget/GridView;

    invoke-virtual {v7}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    sub-int v7, v2, v0

    if-gt v3, v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mListView:Landroid/widget/GridView;

    invoke-virtual {v7, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;

    iget-wide v4, v1, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->mId:J

    cmp-long v7, v4, p1

    if-nez v7, :cond_1

    const-string/jumbo v7, "EmergencySyncGroupItemAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "refreshView position:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " rowCallId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", view:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int v7, v3, v0

    iget-object v8, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mListView:Landroid/widget/GridView;

    invoke-virtual {p0, v7, v6, v8}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public changePosition(IIJJ)V
    .locals 3

    if-eq p1, p2, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mEmergencyContactListByContactId:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mEmergencyContactListByContactId:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEmergencyContactCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget v1, v1, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mExtraCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mEmergencyContactListByContactId:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mEmergencyContactListByContactId:Ljava/util/HashMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;

    if-nez p2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getEmergencyDialer()Lcom/android/phone/EmergencyDialer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04005c

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    new-instance v11, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;-><init>(Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;)V

    iput-object v15, v11, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->parentView:Landroid/view/View;

    const v2, 0x7f10011f

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/emergencydialer/EmergencyContactItem;

    iput-object v2, v11, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->mItem:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-virtual {v14}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->getId()J

    move-result-wide v2

    iput-wide v2, v11, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->mId:J

    move/from16 v0, p1

    iput v0, v11, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->mPosition:I

    :goto_0
    const-string/jumbo v2, "EmergencySyncGroupItemAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getView - position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mNumber is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "getIsContactDetail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->getIsContactDetail()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v11, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->mItem:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v2, v3}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setParent(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)V

    invoke-virtual {v14}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->getIsContactDetail()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v11, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->mItem:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    sget-object v3, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT_LIST:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    invoke-virtual {v14}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->getId()J

    move-result-wide v4

    invoke-virtual {v14}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->getPhoto()Landroid/graphics/Bitmap;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v10}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getScreenType()Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    move-result-object v10

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setItem(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;JLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZLcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V

    :goto_1
    iget-object v2, v11, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->mItem:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-boolean v2, v2, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isRealDrag:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget v2, v2, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mPosStartDrag:I

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget v2, v2, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mPosStartDrag:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    iget-object v2, v11, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->mItem:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setVisibility(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v15, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v15, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v15

    :cond_1
    move-object/from16 v15, p2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;

    move-object/from16 v0, p2

    iput-object v0, v11, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->parentView:Landroid/view/View;

    invoke-virtual {v14}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->getId()J

    move-result-wide v2

    iput-wide v2, v11, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->mId:J

    move/from16 v0, p1

    iput v0, v11, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->mPosition:I

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v14}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->getId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const/4 v9, 0x0

    :goto_2
    iget-object v2, v11, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ViewHolder;->mItem:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    sget-object v3, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    invoke-virtual {v14}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->getId()J

    move-result-wide v4

    invoke-virtual {v14}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->getPhoto()Landroid/graphics/Bitmap;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v10}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getScreenType()Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setItem(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;JLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZLcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;)V

    goto :goto_1

    :cond_3
    const/4 v9, 0x1

    goto :goto_2
.end method

.method public performCancelDone()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mInitLocList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mInitLocList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public performDBDeleteDone(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, -0x1

    const-wide/16 v2, -0x1

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mEmergencyContactListByContactId:Ljava/util/HashMap;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mEmergencyContactListByContactId:Ljava/util/HashMap;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v5, 0x1a

    if-ge v1, v5, :cond_2

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v5, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v5}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getICEContactCount()I

    move-result v5

    if-gt v1, v5, :cond_2

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mInitLocList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v8, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_4

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mInitLocList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    const/4 v5, 0x2

    iput v5, v1, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mExtraCount:I

    new-instance v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;

    move-object v1, p0

    move-object v5, v4

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;-><init>(Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;JLjava/lang/String;Ljava/lang/String;II)V

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mEmergencyContactListByContactId:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setGridView(I)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public performDeleteDone(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->updateSelectedId(J)V

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setGridView(I)V

    invoke-virtual {p0}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeEmergencyContact(Landroid/database/Cursor;)V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gt v0, v4, :cond_0

    const-string/jumbo v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0, v1}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->removeEmergencyContact(Ljava/util/List;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method public removeEmergencyContact(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    :try_start_0
    const-string/jumbo v3, "content://com.android.contacts/emergency"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "+_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    return-void
.end method

.method public setDragingPosition(I)V
    .locals 0

    iput p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mPosDraging:I

    return-void
.end method

.method public updateAddButtonForScreenMode(Z)V
    .locals 4

    const-wide/16 v2, -0x1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public updateByCursor(Landroid/database/Cursor;I)V
    .locals 28

    const/4 v6, 0x0

    const-wide/16 v22, -0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/16 v26, 0x0

    const/16 v24, 0x0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mInitLocList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mEmergencyContactListByContactId:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    new-instance v2, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;

    const-wide/16 v4, -0x2

    const/4 v9, -0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;-><init>(Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;JLjava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->setIsContactDetail(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    const-wide/16 v10, -0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    const-wide/16 v10, -0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mInitLocList:Ljava/util/List;

    const-wide/16 v10, -0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mEmergencyContactListByContactId:Ljava/util/HashMap;

    const-wide/16 v10, -0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_a

    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v3

    if-eqz v3, :cond_9

    const/16 v20, 0x1

    move-object/from16 v21, v2

    move/from16 v9, v26

    move-wide/from16 v4, v22

    :goto_0
    :try_start_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move/from16 v0, v20

    if-gt v0, v3, :cond_4

    const-string/jumbo v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string/jumbo v3, "display_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v3, "data1"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v3, "photo_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string/jumbo v3, "emergency_order"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string/jumbo v3, "EmergencySyncGroupItemAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateByCursor cursor["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] : id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", number"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", name="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", photoId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ,order="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v3, v6}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->isExistICEEmergencyContact(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-object/from16 v2, v21

    :goto_1
    add-int/lit8 v20, v20, 0x1

    move-object/from16 v21, v2

    goto/16 :goto_0

    :cond_1
    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mInitLocList:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v24, v9

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mEmergencyContactListAlways:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mEmergencyContactListAlways:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v2

    :try_start_2
    invoke-virtual/range {v3 .. v9}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->update(JLjava/lang/String;Ljava/lang/String;II)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mEmergencyContactListByContactId:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    :goto_4
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_2
    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_1
    move-exception v3

    move-object/from16 v2, v21

    goto :goto_4

    :cond_3
    new-instance v2, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;-><init>(Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;JLjava/lang/String;Ljava/lang/String;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mEmergencyContactListAlways:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :cond_4
    move-object/from16 v2, v21

    :goto_5
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    :goto_6
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    const/16 v20, 0x0

    :goto_7
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_5

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mInitLocList:Ljava/util/List;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    :cond_5
    const/4 v3, 0x2

    move/from16 v0, p2

    if-ge v0, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v10, 0x1a

    if-ge v3, v10, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v10}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getICEContactCount()I

    move-result v10

    if-gt v3, v10, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    const-wide/16 v10, -0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    const-wide/16 v10, -0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->notifyDataSetChanged()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->updateDBOrder()V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->removeEmergencyContact(Ljava/util/List;)V

    return-void

    :cond_7
    new-instance v2, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    move-object v10, v2

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v17}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;-><init>(Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;JLjava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    const-wide/16 v10, -0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    const-wide/16 v10, -0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    const-wide/16 v10, -0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mInitLocList:Ljava/util/List;

    const-wide/16 v10, -0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mEmergencyContactListByContactId:Ljava/util/HashMap;

    const-wide/16 v10, -0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    const/4 v10, 0x2

    iput v10, v3, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mExtraCount:I

    goto :goto_8

    :catchall_2
    move-exception v3

    move/from16 v9, v26

    move-wide/from16 v4, v22

    goto/16 :goto_4

    :cond_9
    move/from16 v9, v26

    move-wide/from16 v4, v22

    goto/16 :goto_5

    :cond_a
    move/from16 v9, v26

    move-wide/from16 v4, v22

    goto/16 :goto_6
.end method

.method public updateDBOrder()V
    .locals 11

    const/4 v3, 0x1

    :goto_0
    iget-object v6, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget v7, v7, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mExtraCount:I

    sub-int/2addr v6, v7

    if-gt v3, v6, :cond_1

    iget-object v6, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mLocList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v6, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mEmergencyContactListByContactId:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->getOrder()I

    move-result v6

    if-eq v6, v3, :cond_0

    invoke-virtual {v2, v3}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->setOrder(I)V

    const-string/jumbo v6, "content://com.android.contacts/emergency/personal"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "emergency_order"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "EmergencySyncGroupItemAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateDBOrder id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ; order : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "_id = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method
