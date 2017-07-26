.class Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$2;
.super Ljava/lang/Object;
.source "SearchNearbyPlacesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$2;->this$0:Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$2;->this$0:Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;

    invoke-static {v0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->-get0(Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$2;->this$0:Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;

    invoke-static {v0}, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->-get0(Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->performClick()Z

    :cond_0
    return-void
.end method
