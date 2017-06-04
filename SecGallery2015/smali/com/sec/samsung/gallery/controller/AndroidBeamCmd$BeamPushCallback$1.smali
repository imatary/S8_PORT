.class Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback$1;
.super Ljava/lang/Object;
.source "AndroidBeamCmd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->createRecord()Landroid/nfc/NdefRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback$1;->this$1:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;

    iput p2, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback$1;->this$1:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback;->this$0:Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;

    iget v1, p0, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd$BeamPushCallback$1;->val$status:I

    # invokes: Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->ShowErrorInfoDialog(I)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;->access$900(Lcom/sec/samsung/gallery/controller/AndroidBeamCmd;I)V

    return-void
.end method
