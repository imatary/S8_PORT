.class Lcom/samsung/javaomp/compiler/JavaParser$OMPLoopPrimitiveTypes$1;
.super Ljava/util/HashMap;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/javaomp/compiler/JavaParser$OMPLoopPrimitiveTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, "Char"

    const-string/jumbo v1, "char"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParser$OMPLoopPrimitiveTypes$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Integer"

    const-string/jumbo v1, "int"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParser$OMPLoopPrimitiveTypes$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Byte"

    const-string/jumbo v1, "byte"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParser$OMPLoopPrimitiveTypes$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Short"

    const-string/jumbo v1, "short"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParser$OMPLoopPrimitiveTypes$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "Long"

    const-string/jumbo v1, "long"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/javaomp/compiler/JavaParser$OMPLoopPrimitiveTypes$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
