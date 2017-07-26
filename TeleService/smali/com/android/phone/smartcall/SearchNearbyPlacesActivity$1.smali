.class Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$1;
.super Ljava/lang/Object;
.source "SearchNearbyPlacesActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$1;->this$0:Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "SearchPlaceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mSubAppBarSwitch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$1;->this$0:Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;

    invoke-static {v0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->-wrap0(Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$1;->this$0:Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;

    invoke-virtual {v0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "search_nearby_places"

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$1;->this$0:Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;

    invoke-virtual {v0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->updateTurnOnStatus()V

    :goto_1
    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$1;->this$0:Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;

    const v3, 0x7f0d0272

    invoke-virtual {v0, v3}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$1;->this$0:Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;

    const v4, 0x7f0d028b

    invoke-virtual {v3, v4}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "search_nearby_places"

    if-eqz p2, :cond_3

    :goto_2
    int-to-long v6, v1

    invoke-static {v0, v3, v4, v6, v7}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$1;->this$0:Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;

    invoke-static {v0, v2}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->-wrap1(Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;Z)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2
.end method
