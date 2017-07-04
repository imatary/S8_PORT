.class Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$2;
.super Ljava/lang/Object;
.source "ViewAsDialogForDex.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->setOnCheckedChangeListener(Landroid/widget/RadioGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$2;->this$0:Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$2;->this$0:Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->access$100(Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;)Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$ViewAsOnItemSelectedListener;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$2;->this$0:Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->access$000(Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$2;->this$0:Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->access$100(Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;)Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$ViewAsOnItemSelectedListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$ViewAsOnItemSelectedListener;->onItemSelected(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$2;->this$0:Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->access$100(Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;)Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$ViewAsOnItemSelectedListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$ViewAsOnItemSelectedListener;->onItemSelected(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$2;->this$0:Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->access$100(Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;)Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$ViewAsOnItemSelectedListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$ViewAsOnItemSelectedListener;->onItemSelected(I)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$2;->this$0:Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->access$100(Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;)Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$ViewAsOnItemSelectedListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$ViewAsOnItemSelectedListener;->onItemSelected(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f120262
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
