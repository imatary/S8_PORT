.class Lcom/android/phone/operator/usa/AssistedDialingList$2;
.super Ljava/lang/Object;
.source "AssistedDialingList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/AssistedDialingList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/AssistedDialingList;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/AssistedDialingList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v6, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v6}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get2(Lcom/android/phone/operator/usa/AssistedDialingList;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v6}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get5(Lcom/android/phone/operator/usa/AssistedDialingList;)[I

    move-result-object v6

    aget v0, v6, p3

    :goto_0
    iget-object v6, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v6}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get1(Lcom/android/phone/operator/usa/AssistedDialingList;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v6}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get9(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/database/Cursor;

    move-result-object v6

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    iget-object v7, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v7}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get9(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/operator/usa/AssistedDialingList;->-set1(Lcom/android/phone/operator/usa/AssistedDialingList;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    iget-object v7, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v7}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get9(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/operator/usa/AssistedDialingList;->-set2(Lcom/android/phone/operator/usa/AssistedDialingList;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v6, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    const v7, 0x7f0d020e

    invoke-virtual {v6, v7}, Lcom/android/phone/operator/usa/AssistedDialingList;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    const v8, 0x7f0d02aa

    invoke-virtual {v7, v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get8(Lcom/android/phone/operator/usa/AssistedDialingList;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "assisted_dialing_current_country"

    iget-object v7, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v7}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get8(Lcom/android/phone/operator/usa/AssistedDialingList;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/utils/SALogging;->sendSASettingLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v6}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get7(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v6, "otaCountryMccKey"

    iget-object v7, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v7}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get10(Lcom/android/phone/operator/usa/AssistedDialingList;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v6, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-virtual {v6}, Lcom/android/phone/operator/usa/AssistedDialingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "assisted_dialing_current_country"

    iget-object v8, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get8(Lcom/android/phone/operator/usa/AssistedDialingList;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_1
    iget-object v6, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-virtual {v6}, Lcom/android/phone/operator/usa/AssistedDialingList;->finish()V

    return-void

    :cond_1
    add-int/lit8 v0, p3, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v6}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get9(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v6}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get9(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/database/Cursor;

    move-result-object v6

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-static {v6}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get9(Lcom/android/phone/operator/usa/AssistedDialingList;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_3
    iget-object v6, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    const v7, 0x7f0d020e

    invoke-virtual {v6, v7}, Lcom/android/phone/operator/usa/AssistedDialingList;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    const v8, 0x7f0d02aa

    invoke-virtual {v7, v8}, Lcom/android/phone/operator/usa/AssistedDialingList;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "assisted_dialing_reference_country"

    int-to-float v7, v0

    invoke-static {v6, v7}, Lcom/android/phone/utils/SALogging;->sendSASettingLog(Ljava/lang/String;F)V

    iget-object v6, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-virtual {v6}, Lcom/android/phone/operator/usa/AssistedDialingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "assisted_dialing_reference_country"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "refvalue"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v6, p0, Lcom/android/phone/operator/usa/AssistedDialingList$2;->this$0:Lcom/android/phone/operator/usa/AssistedDialingList;

    invoke-virtual {v6}, Lcom/android/phone/operator/usa/AssistedDialingList;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get0()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    invoke-static {}, Lcom/android/phone/operator/usa/AssistedDialingList;->-get0()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1
.end method
