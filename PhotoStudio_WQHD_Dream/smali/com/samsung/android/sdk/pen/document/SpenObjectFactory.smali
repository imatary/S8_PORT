.class Lcom/samsung/android/sdk/pen/document/SpenObjectFactory;
.super Ljava/lang/Object;
.source "SpenObjectFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 2

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;-><init>(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static createObject(IZ)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;-><init>(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
