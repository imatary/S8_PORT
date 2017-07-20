.class Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$EmergencyContactAsyncQuery;
.super Landroid/content/AsyncQueryHandler;
.source "EmergencyContactItemContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyContactAsyncQuery"
.end annotation


# static fields
.field private static final synthetic -com-android-phone-emergencydialer-EmergencyContactItemContainer$ItemTypeSwitchesValues:[I


# instance fields
.field final synthetic this$0:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;


# direct methods
.method private static synthetic -getcom-android-phone-emergencydialer-EmergencyContactItemContainer$ItemTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->-com-android-phone-emergencydialer-EmergencyContactItemContainer$ItemTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->-com-android-phone-emergencydialer-EmergencyContactItemContainer$ItemTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->values()[Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT_LIST:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->EMERGENCY_SERVICE:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->-com-android-phone-emergencydialer-EmergencyContactItemContainer$ItemTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 17

    const/4 v6, 0x0

    const/4 v12, 0x0

    const-wide/16 v4, -0x1

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-static {v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->-wrap0(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;)V

    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->-getcom-android-phone-emergencydialer-EmergencyContactItemContainer$ItemTypeSwitchesValues()[I

    move-result-object v2

    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->values()[Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-eqz p3, :cond_1

    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    :cond_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->EMERGENCY_SERVICE:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    const/4 v8, 0x0

    move-object v7, v6

    invoke-virtual/range {v2 .. v8}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setItem(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;JLjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->restoreContainerState()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v2

    :pswitch_1
    if-eqz p3, :cond_5

    :try_start_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v15, 0x1

    :goto_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gt v15, v2, :cond_4

    const-string/jumbo v2, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string/jumbo v2, "display_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v2, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "photo_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string/jumbo v2, "EmergencyContactItemContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onQueryComplete cursor["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "] : id="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, ", number="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, ", name="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, ", photoId="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-static {v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->-get0(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;)I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mContactId:[J

    aget-wide v2, v2, v16

    cmp-long v2, v4, v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->mItems:[Lcom/android/phone/emergencydialer/EmergencyContactItem;

    aget-object v8, v2, v16

    sget-object v9, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;

    move-wide v10, v4

    move-object v13, v6

    invoke-virtual/range {v8 .. v14}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->setItem(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;JLjava/lang/String;Ljava/lang/String;I)V

    :cond_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_4
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer;->restoreContainerState()V

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startQuery(Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;)V
    .locals 9

    const/4 v2, 0x0

    const-string/jumbo v0, "EmergencyContactItemContainer"

    const-string/jumbo v1, "startQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->-getcom-android-phone-emergencydialer-EmergencyContactItemContainer$ItemTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "data1"

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const-string/jumbo v0, "photo_id"

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const-string/jumbo v0, "display_name"

    const/4 v1, 0x2

    aput-object v0, v4, v1

    const-string/jumbo v0, "default_emergency"

    const/4 v1, 0x3

    aput-object v0, v4, v1

    const-string/jumbo v0, "_id"

    const/4 v1, 0x4

    aput-object v0, v4, v1

    iget v1, p1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ItemType;->id:I

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$EmergencyContactAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "ICE"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "contacts"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "emergency"

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "defaultId"

    const-string/jumbo v5, "2"

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "ICE"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "contacts"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "emergency"

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string/jumbo v0, "safety_emergency_contacts"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "defaultId"

    const-string/jumbo v1, "0"

    invoke-virtual {v8, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    :goto_1
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v0, "defaultId"

    const-string/jumbo v1, "1"

    invoke-virtual {v8, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
