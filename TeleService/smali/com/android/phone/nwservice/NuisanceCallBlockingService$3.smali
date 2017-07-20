.class Lcom/android/phone/nwservice/NuisanceCallBlockingService$3;
.super Ljava/lang/Object;
.source "NuisanceCallBlockingService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nwservice/NuisanceCallBlockingService;->showCheckDialog(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nwservice/NuisanceCallBlockingService;

.field final synthetic val$mUssd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/nwservice/NuisanceCallBlockingService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService$3;->this$0:Lcom/android/phone/nwservice/NuisanceCallBlockingService;

    iput-object p2, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService$3;->val$mUssd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService$3;->this$0:Lcom/android/phone/nwservice/NuisanceCallBlockingService;

    iget-object v1, p0, Lcom/android/phone/nwservice/NuisanceCallBlockingService$3;->val$mUssd:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/phone/nwservice/NuisanceCallBlockingService;->-wrap0(Lcom/android/phone/nwservice/NuisanceCallBlockingService;Ljava/lang/String;)V

    return-void
.end method
