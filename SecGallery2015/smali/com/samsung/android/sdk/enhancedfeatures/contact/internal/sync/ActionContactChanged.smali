.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;
.super Ljava/lang/Object;
.source "ActionContactChanged.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator$ContactChangeAction;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static changedContactIds:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private agentCPO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;",
            ">;"
        }
    .end annotation
.end field

.field private isStarredChanged:Z

.field public mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->isStarredChanged:Z

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->changedContactIds:Ljava/lang/String;

    return-void
.end method

.method private deleteCoreAppsContactIfCan(Landroid/database/Cursor;)V
    .locals 9

    const-string/jumbo v5, "conatct_number"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    if-eqz v5, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;-><init>()V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setMsisdn(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    invoke-interface {v5, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;->onDeleteContact(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;)V

    :cond_0
    const/4 v0, 0x0

    sget-boolean v5, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_NOT_NORMALIZED_NUMBER:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "contacts_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->contactExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    if-eqz v5, :cond_1

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;-><init>()V

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setMsisdn(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    invoke-interface {v5, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;->onInsertContactForDuplicateNumber(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;)V

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteCoreAppsContactIfCan() can find "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", so should not delete coreapps contact"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactQueryHelper;->canFindContactByMSISDN(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getCoreAppsContactRawIdsByMSISDN(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rawID.length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v6, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v4, v3, v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-static {v7, v4, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->deleteCoreAppsContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deleteCoreAppsContactIfCan() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " CoreApps contact\'s raw id is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static declared-synchronized insertCoreAppsContact(Ljava/util/List;Z)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;",
            ">;Z)",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;"
        }
    .end annotation

    const-class v40, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;

    monitor-enter v40

    :try_start_0
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    new-instance v21, Landroid/support/v4/util/LongSparseArray;

    invoke-direct/range {v21 .. v21}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    new-instance v37, Landroid/support/v4/util/LongSparseArray;

    invoke-direct/range {v37 .. v37}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;

    const/16 v29, 0x0

    const/4 v15, 0x0

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getCoreAppsContactRawIdByDUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->updateContactsId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->setId(Ljava/lang/String;)V

    :cond_1
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x2b

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->setMsisdn(Ljava/lang/String;)V

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getTy()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->DELETE:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " is D"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->deleteCoreAppsContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v40

    throw v4

    :cond_3
    :try_start_1
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getTy()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->WITHDRAW:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getServiceId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " is W"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->setAddreses(Ljava/util/List;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->setEvents(Ljava/util/List;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->setMails(Ljava/util/List;)V

    new-instance v4, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    const-string/jumbo v6, ""

    const-string/jumbo v8, ""

    const-string/jumbo v9, ""

    invoke-direct {v4, v6, v8, v9}, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->setOrganization(Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;)V

    const-string/jumbo v4, ""

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->setStatus(Ljava/lang/String;)V

    const-string/jumbo v4, ""

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->setUrl(Ljava/lang/String;)V

    const-string/jumbo v4, ""

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->setDevice_idx(Ljava/lang/String;)V

    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "There is already duid"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getTy()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->UPDATE:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " is U"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    int-to-long v8, v13

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9, v4}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    const/4 v15, 0x1

    :cond_8
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v36

    if-nez v36, :cond_9

    const-string/jumbo v36, ""

    :cond_9
    const-string/jumbo v4, "sync_raw_contacts"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string/jumbo v6, "raw_contact_number"

    move-object/from16 v0, v36

    invoke-virtual {v4, v6, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string/jumbo v6, "raw_contact_duid"

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getServiceId()I

    move-result v4

    if-gez v4, :cond_a

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    :cond_a
    if-eqz v29, :cond_18

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "mimetype"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->isDataAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string/jumbo v4, "sync_data"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v14

    const-string/jumbo v4, "contact_id"

    invoke-virtual {v14, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :goto_2
    const-string/jumbo v4, "mimetype"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v4, "data1"

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v4, "data2"

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getServiceId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getStatus()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string/jumbo v4, "data3"

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :cond_b
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getType()I

    move-result v4

    if-eqz v4, :cond_c

    const-string/jumbo v4, "data10"

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :cond_c
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    const-string/jumbo v4, "data4"

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :cond_d
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    const-string/jumbo v4, "data5"

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :cond_e
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDevice_idx()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    const-string/jumbo v4, "data6"

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDevice_idx()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :cond_f
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getStatusTimestamp()J

    move-result-wide v8

    const-wide/16 v42, 0x0

    cmp-long v4, v8, v42

    if-eqz v4, :cond_10

    const-string/jumbo v4, "timestamp"

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getStatusTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :cond_10
    invoke-virtual {v14}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getType()I

    move-result v4

    if-eqz v4, :cond_12

    if-eqz v29, :cond_12

    const-string/jumbo v4, "sync_data"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newUpdate(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v14

    const-string/jumbo v4, "contact_id = ? AND mimetype = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v14, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v4, "data10"

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v14}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    if-eqz v29, :cond_13

    const-string/jumbo v4, "sync_data"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newUpdate(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v14

    const-string/jumbo v4, "contact_id = ? AND mimetype = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v14, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v6, "data5"

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v14, v6, v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v14}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getEvents()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1b

    if-eqz v29, :cond_14

    const-string/jumbo v4, "mimetype"

    const/4 v6, 0x3

    invoke-static {v5, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->buildDataOpForDelete(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getEvents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_15

    if-nez v29, :cond_1a

    const-string/jumbo v6, "sync_data"

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v6

    const-string/jumbo v8, "contact_id"

    invoke-virtual {v6, v8, v13}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValueBackReference(Ljava/lang/String;I)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v6

    const-string/jumbo v8, "mimetype"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v14

    :goto_5
    const-string/jumbo v6, "data1"

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->getDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v6, "data2"

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v6, "data3"

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v6, "data14"

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->getD14()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v6, "data15"

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->getD15()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v14}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_16
    const/16 v29, 0x1

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v0, v37

    invoke-virtual {v0, v8, v9, v5}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_1

    :cond_17
    const-string/jumbo v4, "sync_data"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newUpdate(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v14

    const-string/jumbo v4, "contact_id = ? AND mimetype = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v14, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    goto/16 :goto_2

    :cond_18
    const-string/jumbo v4, "sync_data"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string/jumbo v6, "contact_id"

    invoke-virtual {v4, v6, v13}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValueBackReference(Ljava/lang/String;I)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v14

    goto/16 :goto_2

    :cond_19
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getName()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_1a
    const-string/jumbo v6, "sync_data"

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v6

    const-string/jumbo v8, "contact_id"

    invoke-virtual {v6, v8, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v6

    const-string/jumbo v8, "mimetype"

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v14

    goto/16 :goto_5

    :cond_1b
    const-string/jumbo v4, "entry.getEvent()is null"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getAddresses()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1f

    if-eqz v29, :cond_1d

    const-string/jumbo v4, "mimetype"

    const/4 v6, 0x2

    invoke-static {v5, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->buildDataOpForDelete(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;

    if-nez v29, :cond_1e

    const-string/jumbo v6, "sync_data"

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v6

    const-string/jumbo v8, "contact_id"

    invoke-virtual {v6, v8, v13}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValueBackReference(Ljava/lang/String;I)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v6

    const-string/jumbo v8, "mimetype"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v14

    :goto_7
    const-string/jumbo v6, "data1"

    invoke-virtual {v12}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getD1()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v6, "data2"

    invoke-virtual {v12}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v6, "data3"

    invoke-virtual {v12}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v6, "data4"

    invoke-virtual {v12}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getStreet()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v6, "data5"

    invoke-virtual {v12}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getPoBox()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v6, "data6"

    invoke-virtual {v12}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getD6()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v6, "data7"

    invoke-virtual {v12}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getCity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v6, "data8"

    invoke-virtual {v12}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getRegion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v6, "data9"

    invoke-virtual {v12}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getPostCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v6, "data10"

    invoke-virtual {v12}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v14}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_1e
    const-string/jumbo v6, "sync_data"

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v6

    const-string/jumbo v8, "contact_id"

    invoke-virtual {v6, v8, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v6

    const-string/jumbo v8, "mimetype"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v14

    goto/16 :goto_7

    :cond_1f
    const-string/jumbo v4, "entry.getEvent()is null"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMails()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_23

    if-eqz v29, :cond_21

    const-string/jumbo v4, "mimetype"

    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->buildDataOpForDelete(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMails()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;

    if-nez v29, :cond_22

    const-string/jumbo v6, "sync_data"

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v6

    const-string/jumbo v8, "contact_id"

    invoke-virtual {v6, v8, v13}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValueBackReference(Ljava/lang/String;I)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v6

    const-string/jumbo v8, "mimetype"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v14

    :goto_9
    const-string/jumbo v6, "data1"

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v6, "data2"

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v6, "data3"

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v14}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_22
    const-string/jumbo v6, "sync_data"

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v6

    const-string/jumbo v8, "contact_id"

    invoke-virtual {v6, v8, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v6

    const-string/jumbo v8, "mimetype"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v14

    goto :goto_9

    :cond_23
    const-string/jumbo v4, "entry.getMail()is null"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getOrganization()Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    move-result-object v4

    if-eqz v4, :cond_31

    if-eqz v29, :cond_30

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "mimetype"

    const/4 v7, 0x4

    const-string/jumbo v8, "data2"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->isDataAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f

    const-string/jumbo v4, "sync_data"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v14

    const-string/jumbo v4, "contact_id"

    invoke-virtual {v14, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :goto_a
    const-string/jumbo v4, "mimetype"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string/jumbo v6, "data2"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string/jumbo v6, "data1"

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getOrganization()Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;->getCompany()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getOrganization()Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;->getPosition()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_25

    const-string/jumbo v4, "data4"

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getOrganization()Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;->getPosition()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :cond_25
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getOrganization()Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;->getDepartment()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_26

    const-string/jumbo v4, "data5"

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getOrganization()Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;->getDepartment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :cond_26
    invoke-virtual {v14}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_27

    if-eqz v29, :cond_33

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "mimetype"

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->isDataAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_32

    const-string/jumbo v4, "sync_data"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v14

    const-string/jumbo v4, "contact_id"

    invoke-virtual {v14, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :goto_c
    const-string/jumbo v4, "mimetype"

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string/jumbo v6, "data1"

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    :cond_27
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getStatus()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28

    if-eqz v29, :cond_28

    const-string/jumbo v4, "sync_data"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newUpdate(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v14

    const-string/jumbo v4, "contact_id = ? AND mimetype = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v14, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v6, "data3"

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_34

    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v14, v6, v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v14}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x1

    :cond_28
    if-eqz v29, :cond_2c

    const/16 v18, 0x0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, ""

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_35

    :cond_29
    const/16 v18, 0x0

    :cond_2a
    :goto_e
    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getProfileImageNumber(Landroid/content/Context;Ljava/lang/String;)I

    move-result v34

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getProfileImageUrl(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v38

    move/from16 v0, v18

    move/from16 v1, v34

    if-ne v0, v1, :cond_2b

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    :cond_2b
    const/4 v15, 0x1

    :cond_2c
    if-eqz v15, :cond_2d

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    if-eqz v29, :cond_2e

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_38

    const-string/jumbo v4, "sync_data"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newDelete(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v14

    const-string/jumbo v4, "contact_id = ? AND mimetype = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x6

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v14, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v14}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/ImageFileManager;->deleteUserProfile(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_2e
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    const/16 v6, 0xfa

    if-le v4, v6, :cond_0

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "create rawid and insert details except presence, batch size is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->applyBatchWithBackReference(Ljava/util/ArrayList;)[J

    move-result-object v39

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "finish some batch, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v26, 0x0

    :goto_f
    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_3b

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v30

    move-object/from16 v0, v21

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-wide/from16 v0, v30

    long-to-int v4, v0

    aget-wide v42, v39, v4

    invoke-static/range {v42 .. v43}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v8, v9, v4}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v26, v26, 0x1

    goto :goto_f

    :cond_2f
    :try_start_3
    const-string/jumbo v4, "sync_data"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newUpdate(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v14

    const-string/jumbo v4, "contact_id = ? AND mimetype = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v14, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    goto/16 :goto_a

    :cond_30
    const-string/jumbo v4, "sync_data"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v14

    const-string/jumbo v4, "contact_id"

    invoke-virtual {v14, v4, v13}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValueBackReference(Ljava/lang/String;I)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    goto/16 :goto_a

    :cond_31
    const-string/jumbo v4, "entry.getOrganization()is null"

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_32
    const-string/jumbo v4, "sync_data"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newUpdate(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v14

    const-string/jumbo v4, "contact_id = ? AND mimetype ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v14, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    goto/16 :goto_c

    :cond_33
    const-string/jumbo v4, "sync_data"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v14

    const-string/jumbo v4, "contact_id"

    invoke-virtual {v14, v4, v13}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValueBackReference(Ljava/lang/String;I)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    goto/16 :goto_c

    :cond_34
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getStatus()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_d

    :cond_35
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImgs()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_37

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImgs()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_36
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;->getImage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_36

    add-int/lit8 v18, v18, 0x1

    goto :goto_10

    :cond_37
    const/16 v18, 0x1

    goto/16 :goto_e

    :cond_38
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImgs()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3a

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImgs()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_39
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;->getImage()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, ""

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_39

    const-string/jumbo v6, "sync_data"

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newDelete(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v14

    const-string/jumbo v6, "contact_id = ? AND mimetype = ? AND data3 = ?"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x2

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;->getNo()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v14, v6, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v14}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;->getNo()I

    move-result v8

    invoke-static {v6, v5, v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/ImageFileManager;->deleteUserProfile(Landroid/content/Context;Ljava/lang/String;I)Z

    goto :goto_11

    :cond_3a
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getTy()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->WITHDRAW:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string/jumbo v4, "sync_data"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newDelete(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v14

    const-string/jumbo v4, "contact_id = ? AND mimetype = ? AND data3 != ?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    const/4 v8, 0x1

    const/4 v9, 0x6

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v14, v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v14}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getProfileImageNumber(Landroid/content/Context;Ljava/lang/String;)I

    move-result v35

    const/16 v28, 0x2

    :goto_12
    if-lez v35, :cond_2e

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    move/from16 v0, v28

    invoke-static {v4, v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/ImageFileManager;->deleteUserProfile(Landroid/content/Context;Ljava/lang/String;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v35, v35, -0x1

    add-int/lit8 v28, v28, 0x1

    goto :goto_12

    :cond_3b
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/util/LongSparseArray;->clear()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v23

    :try_start_6
    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->clear()V

    throw v4

    :cond_3c
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v4

    if-lez v4, :cond_3e

    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "create rawid and insert details except presence, batch size is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->applyBatchWithBackReference(Ljava/util/ArrayList;)[J

    move-result-object v39

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "finish some batch, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v26, 0x0

    :goto_13
    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_3d

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v30

    move-object/from16 v0, v21

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    move-wide/from16 v0, v30

    long-to-int v4, v0

    aget-wide v10, v39, v4

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v0, v8, v9, v4}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v26, v26, 0x1

    goto :goto_13

    :cond_3d
    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/util/LongSparseArray;->clear()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->clear()V

    :cond_3e
    :goto_14
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v6, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v8, v9, v6}, Landroid/support/v4/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3f

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_41

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImageTimestamp()J

    move-result-wide v10

    invoke-static/range {v6 .. v11}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->insertProfileImageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;J)V

    :cond_41
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImgs()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_3f

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImgs()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3f

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3f

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImgs()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :cond_42
    :goto_15
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;->getNo()I

    move-result v6

    const/4 v8, 0x1

    if-le v6, v8, :cond_42

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;->getImage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_42

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;->getNo()I

    move-result v8

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;->getImage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;->getImageTimestamp()J

    move-result-wide v10

    invoke-static/range {v6 .. v11}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->insertProfileImageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_15

    :catch_1
    move-exception v23

    :try_start_a
    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_14

    :catchall_2
    move-exception v4

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->clear()V

    throw v4

    :cond_43
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_44

    const-string/jumbo v4, ";"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->changedContactIds:Ljava/lang/String;

    :cond_44
    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getImageInfoList(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v4

    monitor-exit v40

    return-object v4
.end method

.method private static updateContactsId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public applyBatch()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->applyBatch(Ljava/util/ArrayList;)[J

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getChangedContactIds()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->changedContactIds:Ljava/lang/String;

    return-object v0
.end method

.method public ifOrNotUploadFavorites()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-boolean v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->isStarredChanged:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getServiceStatus(Landroid/content/Context;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->getPrivacySettings()Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_FAVORITES:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v1, v2

    goto :goto_0
.end method

.method public onChanged(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->agentCPO:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->updateContact(Landroid/content/Context;Landroid/database/Cursor;Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->deleteCoreAppsContactIfCan(Landroid/database/Cursor;)V

    return-void
.end method

.method public onDeleted(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->deleteContact(Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->deleteCoreAppsContactIfCan(Landroid/database/Cursor;)V

    return-void
.end method

.method public onInserted(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->agentCPO:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->insertContact(Landroid/content/Context;Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setStarredChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->isStarredChanged:Z

    return-void
.end method

.method public setSyncListener(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    return-void
.end method
