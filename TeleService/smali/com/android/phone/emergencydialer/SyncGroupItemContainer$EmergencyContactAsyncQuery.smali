.class Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;
.super Landroid/content/AsyncQueryHandler;
.source "SyncGroupItemContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/emergencydialer/SyncGroupItemContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyContactAsyncQuery"
.end annotation


# static fields
.field private static final synthetic -com-android-phone-emergencydialer-SyncGroupItemContainer$ItemTypeSwitchesValues:[I


# instance fields
.field final synthetic this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;


# direct methods
.method private static synthetic -getcom-android-phone-emergencydialer-SyncGroupItemContainer$ItemTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->-com-android-phone-emergencydialer-SyncGroupItemContainer$ItemTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->-com-android-phone-emergencydialer-SyncGroupItemContainer$ItemTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;->values()[Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;->EMERGENCY_DIALER:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;->ICE_CONTACT:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->-com-android-phone-emergencydialer-SyncGroupItemContainer$ItemTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string/jumbo v2, "EmergencySyncGroupItemContainer"

    const-string/jumbo v3, "onQueryComplete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mExtraCount:I

    invoke-static {}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->-getcom-android-phone-emergencydialer-SyncGroupItemContainer$ItemTypeSwitchesValues()[I

    move-result-object v2

    invoke-static {}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;->values()[Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->inflateEmergencyEmptyView()V

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v1, v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setEmergencyContactExists(Z)V

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v1, v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-set2(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;I)I

    sget-object v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;->EMERGENCY_DIALER:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;

    invoke-virtual {p0, v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->startQuery(Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-set2(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;I)I

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->isNoStateInService(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoWIFI()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    :goto_1
    invoke-static {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-set3(Z)Z

    invoke-static {}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get5()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;->EMERGENCY_DIALER:Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;

    invoke-virtual {p0, v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->startQuery(Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget v1, v1, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mExtraCount:I

    invoke-virtual {v0, v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setGridView(I)V

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v0, v0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget v1, v1, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mExtraCount:I

    invoke-virtual {v0, v4, v1}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->updateByCursor(Landroid/database/Cursor;I)V

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->restoreContainerState()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EmergencyDialer"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get4(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)I

    move-result v2

    if-nez v2, :cond_7

    if-eqz p3, :cond_6

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v1, v1, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    invoke-virtual {v1, p3}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->removeEmergencyContact(Landroid/database/Cursor;)V

    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v1, v0}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-set0(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;Z)Z

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EmergencyDialer"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    if-eqz p3, :cond_8

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget v2, v2, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mExtraCount:I

    invoke-virtual {v1, v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setGridView(I)V

    :goto_3
    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v1, v1, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget v2, v2, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mExtraCount:I

    invoke-virtual {v1, p3, v2}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->updateByCursor(Landroid/database/Cursor;I)V

    iget-object v1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->restoreContainerState()V

    goto :goto_2

    :cond_9
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget v3, v3, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->EMERGENCY_CONTACT_MAX_COUNT:I

    if-eq v2, v3, :cond_a

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-static {v3}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->-get4(Lcom/android/phone/emergencydialer/SyncGroupItemContainer;)I

    move-result v3

    if-lt v2, v3, :cond_b

    :cond_a
    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iput v1, v2, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mExtraCount:I

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget v4, v4, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mExtraCount:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setGridView(I)V

    :goto_4
    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v2, v1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setEmergencyContactExists(Z)V

    goto :goto_3

    :cond_b
    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget v4, v4, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mExtraCount:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->setGridView(I)V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startQuery(Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;)V
    .locals 14

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "EmergencySyncGroupItemContainer"

    const-string/jumbo v1, "startQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->-getcom-android-phone-emergencydialer-SyncGroupItemContainer$ItemTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
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

    const-string/jumbo v5, "true"

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "android.provider.extra.ADDRESS_BOOK_INDEX"

    const-string/jumbo v5, "true"

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "directory"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v4, v6

    iget v1, p1, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;->id:I

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

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

    move-result-object v0

    const-string/jumbo v1, "defaultId"

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v0, 0x6

    new-array v9, v0, [Ljava/lang/String;

    const-string/jumbo v0, "data1"

    aput-object v0, v9, v6

    const-string/jumbo v0, "photo_id"

    aput-object v0, v9, v7

    const-string/jumbo v0, "display_name"

    const/4 v1, 0x2

    aput-object v0, v9, v1

    const-string/jumbo v0, "default_emergency"

    const/4 v1, 0x3

    aput-object v0, v9, v1

    const-string/jumbo v0, "_id"

    const/4 v1, 0x4

    aput-object v0, v9, v1

    const-string/jumbo v0, "emergency_order"

    const/4 v1, 0x5

    aput-object v0, v9, v1

    iget v6, p1, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$ItemType;->id:I

    const-string/jumbo v12, "emergency_order"

    move-object v5, p0

    move-object v7, v2

    move-object v8, v3

    move-object v10, v2

    move-object v11, v2

    invoke-virtual/range {v5 .. v12}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer$EmergencyContactAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
