.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;
.super Ljava/lang/Object;
.source "ActionProfileChanged.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;


# static fields
.field private static final TAG:Ljava/lang/String;


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

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private excludingItemsList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private imageInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;",
            ">;"
        }
    .end annotation
.end field

.field private insertprofileUrl:[Ljava/lang/String;

.field private insertprofileno:I

.field private mAddressChanged:Z

.field private mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

.field private mContext:Landroid/content/Context;

.field private mEmailChanged:Z

.field private mEventChanged:Z

.field private mNameChanged:Z

.field private mOrganizationChanged:Z

.field private mPhotoChanged:Z

.field private mPhotoDeleted:Z

.field private mStatusMessage:Ljava/lang/String;

.field private mSubImageCount:I

.field private profilepath:Ljava/lang/String;

.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v1, 0x7530

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    iput-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoChanged:Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mAddressChanged:Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mOrganizationChanged:Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEventChanged:Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEmailChanged:Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mNameChanged:Z

    iput-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoDeleted:Z

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileUrl:[Ljava/lang/String;

    iput v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileno:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->profilepath:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mSubImageCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->imageInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method private addImageInfoToList(Landroid/database/Cursor;Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v7, 0x0

    iget v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileno:I

    add-int/lit8 v4, v9, -0x1

    iget-object v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getMyProifleImage(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v2, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;-><init>()V

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    const-string/jumbo v9, "data14"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string/jumbo v9, "data14"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->isSamePhotoMimeType(Landroid/database/Cursor;Landroid/database/Cursor;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    invoke-direct {p0, v0, v9}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->getProfileImgeUrl(Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    iget-object v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileUrl:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v4, -0x1

    :try_start_1
    aget-object v7, v9, v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "insertUrl: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v5

    :cond_3
    :try_start_2
    const-string/jumbo v9, "is_primary"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v11, :cond_8

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;->setNum(I)V

    invoke-virtual {p2, v7}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->setImageUrl(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2, v7}, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;->setImage(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->imageInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    iget v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mSubImageCount:I

    const/16 v10, 0xa

    if-le v9, v10, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "image Count MAX ~~ = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mSubImageCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void

    :cond_6
    :try_start_3
    const-string/jumbo v9, "data15"

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    const-string/jumbo v9, "data15"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->isSamePhotoMimeType(Landroid/database/Cursor;Landroid/database/Cursor;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x0

    invoke-direct {p0, v0, v9}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->getProfileImgeUrl(Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_1

    goto/16 :goto_0

    :cond_8
    iget v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mSubImageCount:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mSubImageCount:I

    invoke-virtual {v2, v9}, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;->setNum(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_3
    sget-object v9, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v1, v9}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v1

    move v4, v5

    goto :goto_3
.end method

.method private applyIndividualItems(Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;)Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->setEmail(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    const-string/jumbo v1, "vnd.android.cursor.item/organization"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    const-string/jumbo v1, "vnd.android.cursor.item/organization"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->setOrganization(Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    const-string/jumbo v1, "vnd.android.cursor.item/contact_event"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    const-string/jumbo v1, "vnd.android.cursor.item/contact_event"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->setEvent(Ljava/util/List;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    const-string/jumbo v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    const-string/jumbo v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->setAddress(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private changeEventInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "-"

    array-length v3, v2

    add-int/lit8 v1, v3, -0x2

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :cond_1
    return-object v0
.end method

.method private checkExcludingItemList(Landroid/database/Cursor;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    const-string/jumbo v3, "mimetype"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mimetype"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is excluded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CursorIndexOutOfBoundsException is occured, but discard this"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkStatusMessage(Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;)Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactQueryHelper;->getProfileStatusMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mStatusMessage:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mStatusMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mStatusMessage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->setStatus(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method private static deletePhotoFileUsingByteIfExist(Landroid/database/Cursor;)V
    .locals 2

    const-string/jumbo v1, "data12"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "data15"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->deleteProfileImageUsingByte([BLjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private static deletePhotoFileUsingUrlIfExist(Landroid/database/Cursor;)V
    .locals 2

    const-string/jumbo v1, "data12"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "data14"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->deleteProfileImageUsingUrl(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static deleteProfileImageFromOrsServer(Landroid/database/Cursor;)V
    .locals 1

    const-string/jumbo v0, "data14"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->deletePhotoFileUsingUrlIfExist(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->deletePhotoFileUsingByteIfExist(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private static deleteProfileImageUsingByte([BLjava/lang/String;)Z
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "deleteProfileImageUsingByte filePath ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "nas53yzc3k"

    new-instance v5, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    invoke-direct {v5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>()V

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->deleteProfileImageByByteBlocking(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/Object;Ljava/lang/String;[BLjava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_0
    if-eqz v7, :cond_0

    iget v0, v7, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;->httpStatusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "fail to deleteProfileImageUsingByte result code ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v7, :cond_1

    iget v0, v7, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;->httpStatusCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method private static deleteProfileImageUsingUrl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x0

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->getImagUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "deleteProfileImageUsingUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "path"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "nas53yzc3k"

    new-instance v5, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    invoke-direct {v5}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>()V

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->deleteProfileImageToORSBlocking(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/Object;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_0
    if-eqz v7, :cond_0

    iget v0, v7, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;->httpStatusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "fail to deleteProfileImageUsingUrl image result code ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v7, :cond_1

    iget v0, v7, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;->httpStatusCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method private detectChanged(Landroid/database/Cursor;)V
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v3, "mimetype"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEmailChanged:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mAddressChanged:Z

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_0
    const-string/jumbo v3, "data2"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEventChanged:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "detectChanged - IllegalStateException is occured"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEventChanged:Z

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "vnd.android.cursor.item/name"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mNameChanged:Z

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "vnd.android.cursor.item/organization"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iput-boolean v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mOrganizationChanged:Z

    goto :goto_0

    :cond_5
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/Utils;->isPhotoMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoChanged:Z

    goto :goto_0
.end method

.method private equalsPhotoByte(Landroid/database/Cursor;Landroid/database/Cursor;)Z
    .locals 2

    const-string/jumbo v0, "data15"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    const-string/jumbo v1, "data15"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method private equalsPhotoFileId(Landroid/database/Cursor;Landroid/database/Cursor;)Z
    .locals 2

    const-string/jumbo v0, "data14"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "data14"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static getImagUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PhotoID ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    sget-object v2, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method private getMaxImageNo()I
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "contact_pref"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->settings:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->settings:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "max_profile_image_count"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get max image count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private getProfileImgeUrl(Landroid/database/Cursor;Z)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "data13"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_1

    const-string/jumbo v3, "data14"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->uploadProfileImageUsingUrl(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const-string/jumbo v3, "profile"

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newUpdate(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v0

    const-string/jumbo v3, "_id=?"

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v3, "data12"

    aget-object v4, v1, v7

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string/jumbo v3, "data13"

    aget-object v4, v1, v6

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v2, v1, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no existing imageurl : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    const-string/jumbo v3, "data15"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->uploadProfileImageUsingByte([B)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "data13"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "existing imageurl : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mOrganizationChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mNameChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEmailChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEventChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mAddressChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoChanged:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSamePhotoMimeType(Landroid/database/Cursor;Landroid/database/Cursor;)Z
    .locals 2

    const-string/jumbo v0, "mimetype"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mimetype"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private makeImageInfoList(Landroid/database/Cursor;Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;)V
    .locals 5

    iget-boolean v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoDeleted:Z

    if-nez v3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->addImageInfoToList(Landroid/database/Cursor;Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;)V

    iget v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mSubImageCount:I

    add-int/lit8 v2, v3, -0x1

    iput v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mSubImageCount:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->getMaxImageNo()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tmp_image_count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "   max_image_count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mSubImageCount:I

    if-ge v3, v1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;-><init>()V

    iget v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mSubImageCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mSubImageCount:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;->setNum(I)V

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;->setImage(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->imageInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->setMaxImageNo(I)V

    :cond_1
    return-void
.end method

.method private photoNotExist(Landroid/database/Cursor;)Z
    .locals 2

    const-string/jumbo v1, "data15"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    const-string/jumbo v1, "data14"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readUriData(Landroid/net/Uri;)[B
    .locals 10

    const/4 v7, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "r"

    invoke-virtual {v8, p1, v9}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-object v7

    :cond_0
    const/16 v8, 0x4000

    new-array v2, v8, [B

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v8, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v8

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v7, v1

    goto :goto_0
.end method

.method private setMaxImageNo(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "contact_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->settings:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "max_profile_image_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set max image count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private uploadProfileImageList(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/io/ImageMetaInfoList;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/contact/io/ImageMetaInfoList;-><init>()V

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ssf/contact/io/ImageMetaInfoList;->setImgs(Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uploadProfileImageList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->updateProfileImageMeta(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/ImageMetaInfoList;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/samsung/android/sdk/ssf/contact/server/ContactException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "uploadProfileImageList - SUCCESS"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ContactException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/server/ContactException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "InterruptedException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ExecutionException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "uploadProfileImageList - FAILED"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private uploadProfileImageUsingByte([B)[Ljava/lang/String;
    .locals 11

    const/4 v0, 0x2

    const/4 v10, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string/jumbo v0, "uploadProfileImageUsingByte = "

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "nas53yzc3k"

    array-length v4, p1

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->uploadProfileImage(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/Object;Ljava/lang/String;Ljava/io/InputStream;IZLcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    :cond_0
    :goto_0
    if-eqz v8, :cond_2

    iget v0, v8, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->httpStatusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->getPublicUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->getPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    :goto_1
    return-object v9

    :catch_0
    move-exception v0

    move-object v3, v7

    :goto_2
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v3, v7

    :goto_3
    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v3, v7

    :goto_4
    if-eqz v3, :cond_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v7

    :goto_5
    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :cond_1
    :goto_6
    throw v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "fail to upload me profile image result code ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v8, :cond_3

    iget v0, v8, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->httpStatusCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_0

    :catch_7
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v0

    goto :goto_4

    :catch_9
    move-exception v0

    goto :goto_3

    :catch_a
    move-exception v0

    goto :goto_2
.end method

.method private uploadProfileImageUsingUrl(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12

    const/4 v0, 0x2

    const/4 v11, 0x1

    new-array v10, v0, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uploadProfileImageUsingUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->getImagUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->readUriData(Landroid/net/Uri;)[B

    move-result-object v9

    if-eqz v9, :cond_4

    array-length v4, v9

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uploadProfileImageUsingUrl imageBytesLength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "dataStream.available= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "nas53yzc3k"

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->uploadProfileImage(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/Object;Ljava/lang/String;Ljava/io/InputStream;IZLcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    :cond_0
    :goto_1
    if-eqz v8, :cond_2

    iget v0, v8, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->httpStatusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->getPublicUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->getPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v11

    :goto_2
    return-object v10

    :catch_0
    move-exception v0

    move-object v3, v7

    :goto_3
    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v3, v7

    :goto_4
    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v3, v7

    :goto_5
    if-eqz v3, :cond_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v7

    :goto_6
    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :cond_1
    :goto_7
    throw v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "fail to upload me profile image result code ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v8, :cond_3

    iget v0, v8, Lcom/samsung/android/sdk/ssf/file/io/UploadFileResponse;->httpStatusCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    goto :goto_2

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    goto :goto_5

    :catch_9
    move-exception v0

    goto :goto_4

    :catch_a
    move-exception v0

    goto :goto_3

    :cond_4
    move-object v3, v7

    goto :goto_0
.end method


# virtual methods
.method public addOffEntry(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->excludingItemsList:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public applyBatch()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mStatusMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mStatusMessage:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setStatusMessage(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->applyBatch(Ljava/util/ArrayList;)[J

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getResult()Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;
    .locals 37

    new-instance v28, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;

    invoke-direct/range {v28 .. v28}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;-><init>()V

    sget-object v3, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "data"

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getIsSamsungDevice()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v5, "account_name"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getProfileAccountName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v5, "account_type"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getProfileAccountType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "_id ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    const-string/jumbo v3, "SER"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CscUtil;->getCSC()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-eqz v13, :cond_3

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const-string/jumbo v3, "mimetype"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEmailChanged:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "data2"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v3, "data1"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v3, "data3"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    new-instance v27, Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;->setLabel(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->addEmail(Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;)V

    :cond_2
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    if-eqz v13, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getResult() - cursor size is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoChanged:Z

    if-eqz v3, :cond_5

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->imageInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->imageInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "all profile image is deleted"

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v30, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;

    invoke-direct/range {v30 .. v30}, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;-><init>()V

    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;->setNum(I)V

    const-string/jumbo v3, ""

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/contact/io/ImageReqInfo;->setImage(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->imageInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->setMaxImageNo(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->imageInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->imageInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "imageInfoList Count = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->imageInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->imageInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->uploadProfileImageList(Ljava/util/ArrayList;)V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->isChanged()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v13, :cond_18

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_18

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v5, v28

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->initMultiField(ZZZZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_1
    if-eqz v13, :cond_8

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->checkStatusMessage(Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;)Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->applyIndividualItems(Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;)Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;

    move-result-object v28

    return-object v28

    :cond_9
    :try_start_1
    const-string/jumbo v3, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mAddressChanged:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "data2"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v3, "data7"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v3, "data8"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v3, "data10"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    new-instance v12, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;

    move-object/from16 v0, v34

    invoke-direct {v12, v0}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;-><init>(Ljava/lang/String;)V

    if-nez v31, :cond_a

    const-string/jumbo v3, "data1"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v3, "data3"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v3, "data4"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v3, "data5"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v3, "data6"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v3, "data9"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v12, v14}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->setD1(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->setLabel(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->setStreet(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->setPobox(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->setD6(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->setPostcode(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->setcity(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->setRegion(Ljava/lang/String;)V

    invoke-virtual {v12, v15}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->setCountry(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->addAddress(Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v26

    :try_start_2
    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v13, :cond_8

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_b
    :try_start_3
    const-string/jumbo v3, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEventChanged:Z

    if-eqz v3, :cond_e

    const-string/jumbo v3, "data2"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_e

    const-string/jumbo v3, "data2"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v3, "data1"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v31, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->changeEventInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_c
    const-string/jumbo v3, "data3"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v3, "data14"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v3, "data15"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    new-instance v29, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->setLabel(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->setD14(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->setD15(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->addEvent(Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    if-eqz v13, :cond_d

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v3

    :cond_e
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEventChanged:Z

    if-eqz v3, :cond_2

    new-instance v29, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;

    const-string/jumbo v3, ""

    const-string/jumbo v5, ""

    move-object/from16 v0, v29

    invoke-direct {v0, v3, v5}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, ""

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->setLabel(Ljava/lang/String;)V

    const-string/jumbo v3, ""

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->setD14(Ljava/lang/String;)V

    const-string/jumbo v3, ""

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->setD15(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->addEvent(Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mNameChanged:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "data1"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v3, "data2"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    if-nez v31, :cond_10

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mOrganizationChanged:Z

    if-eqz v3, :cond_2

    new-instance v32, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    const-string/jumbo v3, "data1"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "data4"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "data5"

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-direct {v0, v3, v5, v6}, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->setOrganization(Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;)V

    goto/16 :goto_0

    :cond_12
    invoke-static/range {v35 .. v35}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/Utils;->isPhotoMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoChanged:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_2

    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const-string/jumbo v6, "mimetype = ? OR mimetype = ? "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "vnd.android.cursor.item/photo"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "vnd.android.cursor.item/photo_deleted"

    aput-object v9, v7, v8

    const-string/jumbo v8, "_id DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v33

    const/4 v5, 0x0

    if-eqz v33, :cond_13

    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Contact Photo Count :  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->makeImageInfoList(Landroid/database/Cursor;Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_13
    if-eqz v33, :cond_14

    if-eqz v5, :cond_15

    :try_start_7
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_14
    :goto_3
    const/4 v3, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoChanged:Z

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string/jumbo v3, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->setImageUrl(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v3

    :try_start_9
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v26

    :try_start_a
    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    :cond_15
    :try_start_b
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    :catch_3
    move-exception v3

    :try_start_c
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v5

    move-object/from16 v36, v5

    move-object v5, v3

    move-object/from16 v3, v36

    :goto_4
    if-eqz v33, :cond_16

    if-eqz v5, :cond_17

    :try_start_d
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_16
    :goto_5
    :try_start_e
    throw v3

    :catch_4
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_17
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_5

    :cond_18
    :try_start_f
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEmailChanged:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mAddressChanged:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEventChanged:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mOrganizationChanged:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mNameChanged:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoChanged:Z

    move-object/from16 v5, v28

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->initMultiField(ZZZZZZ)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_1

    :catchall_2
    move-exception v3

    goto :goto_4
.end method

.method public onChanged(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 7

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->checkExcludingItemList(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "mimetype"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/Utils;->isPhotoMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->photoNotExist(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "onChanged : profile image not exist "

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->updateProfileData(Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoChanged:Z

    iput-boolean v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoDeleted:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "data14"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->equalsPhotoFileId(Landroid/database/Cursor;Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "onChanged : Same Photo ID ~~~"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->updateProfileData(Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoChanged:Z

    goto :goto_0

    :cond_3
    invoke-static {p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->deletePhotoFileUsingUrlIfExist(Landroid/database/Cursor;)V

    const-string/jumbo v2, "data14"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->uploadProfileImageUsingUrl(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileUrl:[Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileno:I

    const/4 v4, 0x0

    aget-object v4, v0, v4

    aput-object v4, v2, v3

    aget-object v2, v0, v6

    iput-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->profilepath:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileUrl:[Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileno:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileno:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->profilepath:Ljava/lang/String;

    invoke-static {p1, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->updateProfileDataWithImageUrl(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->detectChanged(Landroid/database/Cursor;)V

    const-string/jumbo v2, "mimetype"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEventChanged:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mEventChanged:Z

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->equalsPhotoByte(Landroid/database/Cursor;Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "onChanged : Same Photo ~~~"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->updateProfileData(Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->mPhotoChanged:Z

    goto/16 :goto_0

    :cond_5
    invoke-static {p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->deletePhotoFileUsingByteIfExist(Landroid/database/Cursor;)V

    const-string/jumbo v2, "data15"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->uploadProfileImageUsingByte([B)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->updateProfileData(Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public onDeleted(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->checkExcludingItemList(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "mimetype"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/Utils;->isPhotoMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->deleteProfileImageFromOrsServer(Landroid/database/Cursor;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->deleteProfileData(Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->detectChanged(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public onInserted(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->checkExcludingItemList(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "mimetype"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/Utils;->isPhotoMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "data14"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "data14"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->uploadProfileImageUsingUrl(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileUrl:[Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileno:I

    aget-object v3, v0, v3

    aput-object v3, v1, v2

    aget-object v1, v0, v4

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->profilepath:Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileUrl:[Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileno:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileno:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->profilepath:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->insertProfileData(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->detectChanged(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "data15"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->uploadProfileImageUsingByte([B)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileUrl:[Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->insertprofileno:I

    aget-object v3, v0, v3

    aput-object v3, v1, v2

    aget-object v1, v0, v4

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->profilepath:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionProfileChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-static {p1, v2, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->insertProfileData(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
