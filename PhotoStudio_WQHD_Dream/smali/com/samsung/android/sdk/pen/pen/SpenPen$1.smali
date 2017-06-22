.class Lcom/samsung/android/sdk/pen/pen/SpenPen$1;
.super Ljava/lang/Object;
.source "SpenPen.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/pen/SpenPen;->showAdvancedSetting(Lcom/samsung/android/sdk/pen/pen/SpenPen$ChangedListener;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/pen/pen/SpenPen;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/pen/pen/SpenPen;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen$1;->this$0:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/SpenPen$1;->this$0:Lcom/samsung/android/sdk/pen/pen/SpenPen;

    # getter for: Lcom/samsung/android/sdk/pen/pen/SpenPen;->mListener:Lcom/samsung/android/sdk/pen/pen/SpenPen$ChangedListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/pen/SpenPen;->access$000(Lcom/samsung/android/sdk/pen/pen/SpenPen;)Lcom/samsung/android/sdk/pen/pen/SpenPen$ChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/pen/SpenPen$ChangedListener;->onChanged(Ljava/lang/String;)V

    return-void
.end method
