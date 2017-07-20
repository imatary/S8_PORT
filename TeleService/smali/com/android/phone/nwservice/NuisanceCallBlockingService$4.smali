.class Lcom/android/phone/nwservice/NuisanceCallBlockingService$4;
.super Ljava/lang/Object;
.source "NuisanceCallBlockingService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nwservice/NuisanceCallBlockingService;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nwservice/NuisanceCallBlockingService;


# direct methods
.method constructor <init>(Lcom/android/phone/nwservice/NuisanceCallBlockingService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService$4;->this$0:Lcom/android/phone/nwservice/NuisanceCallBlockingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService$4;->this$0:Lcom/android/phone/nwservice/NuisanceCallBlockingService;

    const-string/jumbo v1, "#122*1#"

    invoke-static {v0, v1}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->-wrap0(Lcom/android/phone/nwservice/NuisanceCallBlockingService;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsJpn;->setChangeCurrentSetting(Z)V

    return-void
.end method
