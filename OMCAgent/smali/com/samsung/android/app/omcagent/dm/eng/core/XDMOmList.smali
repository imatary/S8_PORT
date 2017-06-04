.class public Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;
.super Ljava/lang/Object;
.source "XDMOmList.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/dm/interfaces/XDMInterface;


# instance fields
.field public data:Ljava/lang/Object;

.field public next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xdmOmDeleteAclList(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;)V
    .locals 2

    move-object v0, p0

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    const/4 v0, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static xdmOmGetFormatFromString(Ljava/lang/String;)I
    .locals 1

    const-string v0, "b64"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "bin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "bool"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-string v0, "chr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-string v0, "int"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-string v0, "node"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const-string v0, "xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const-string v0, "float"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    :cond_8
    const-string v0, "time"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xb

    goto :goto_0

    :cond_9
    const-string v0, "date"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xa

    goto :goto_0

    :cond_a
    const/16 v0, 0xc

    goto :goto_0
.end method

.method public static xdmOmGetFormatString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "b64"

    goto :goto_0

    :pswitch_1
    const-string v0, "bin"

    goto :goto_0

    :pswitch_2
    const-string v0, "bool"

    goto :goto_0

    :pswitch_3
    const-string v0, "chr"

    goto :goto_0

    :pswitch_4
    const-string v0, "int"

    goto :goto_0

    :pswitch_5
    const-string v0, "node"

    goto :goto_0

    :pswitch_6
    const-string v0, "null"

    goto :goto_0

    :pswitch_7
    const-string v0, "xml"

    goto :goto_0

    :pswitch_8
    const-string v0, "float"

    goto :goto_0

    :pswitch_9
    const-string v0, "time"

    goto :goto_0

    :pswitch_a
    const-string v0, "date"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public xdmOmDeleteMimeList(Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;)V
    .locals 3

    move-object v0, p1

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->next:Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/samsung/android/app/omcagent/dm/eng/core/XDMOmList;->data:Ljava/lang/Object;

    const/4 v0, 0x0

    move-object v0, v1

    goto :goto_0
.end method
