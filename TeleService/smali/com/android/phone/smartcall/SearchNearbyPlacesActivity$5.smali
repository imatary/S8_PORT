.class Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$5;
.super Ljava/lang/Object;
.source "SearchNearbyPlacesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;->showWithdrawDialog()V
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

    iput-object p1, p0, Lcom/android/phone/smartcall/SearchNearbyPlacesActivity$5;->this$0:Lcom/android/phone/smartcall/SearchNearbyPlacesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
