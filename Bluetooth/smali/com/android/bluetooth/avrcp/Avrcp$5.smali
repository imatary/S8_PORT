.class Lcom/android/bluetooth/avrcp/Avrcp$5;
.super Ljava/lang/Object;
.source "Avrcp.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/avrcp/Avrcp;->setupMediaControllerWithMediaBrowser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcp/Avrcp;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$5;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "Avrcp"

    const-string/jumbo v1, "onActiveSessionsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$5;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v0, p1}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap33(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/util/List;)V

    return-void
.end method
