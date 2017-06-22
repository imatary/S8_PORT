.class Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$2;
.super Ljava/lang/Object;
.source "LongestAxisMedianCut.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->doCut(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/commons/imaging/palette/ColorCount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;

.field final synthetic val$mode:Lorg/apache/commons/imaging/palette/ColorComponent;


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;Lorg/apache/commons/imaging/palette/ColorComponent;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$2;->this$0:Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;

    iput-object p2, p0, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$2;->val$mode:Lorg/apache/commons/imaging/palette/ColorComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/apache/commons/imaging/palette/ColorCount;

    check-cast p2, Lorg/apache/commons/imaging/palette/ColorCount;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$2;->compare(Lorg/apache/commons/imaging/palette/ColorCount;Lorg/apache/commons/imaging/palette/ColorCount;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/commons/imaging/palette/ColorCount;Lorg/apache/commons/imaging/palette/ColorCount;)I
    .locals 2

    sget-object v0, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$3;->$SwitchMap$org$apache$commons$imaging$palette$ColorComponent:[I

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$2;->val$mode:Lorg/apache/commons/imaging/palette/ColorComponent;

    invoke-virtual {v1}, Lorg/apache/commons/imaging/palette/ColorComponent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p1, Lorg/apache/commons/imaging/palette/ColorCount;->alpha:I

    iget v1, p2, Lorg/apache/commons/imaging/palette/ColorCount;->alpha:I

    sub-int/2addr v0, v1

    goto :goto_0

    :pswitch_1
    iget v0, p1, Lorg/apache/commons/imaging/palette/ColorCount;->red:I

    iget v1, p2, Lorg/apache/commons/imaging/palette/ColorCount;->red:I

    sub-int/2addr v0, v1

    goto :goto_0

    :pswitch_2
    iget v0, p1, Lorg/apache/commons/imaging/palette/ColorCount;->green:I

    iget v1, p2, Lorg/apache/commons/imaging/palette/ColorCount;->green:I

    sub-int/2addr v0, v1

    goto :goto_0

    :pswitch_3
    iget v0, p1, Lorg/apache/commons/imaging/palette/ColorCount;->blue:I

    iget v1, p2, Lorg/apache/commons/imaging/palette/ColorCount;->blue:I

    sub-int/2addr v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
