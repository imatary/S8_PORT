.class public final Llibcore/io/DropBox;
.super Ljava/lang/Object;
.source "DropBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/io/DropBox$DefaultReporter;,
        Llibcore/io/DropBox$Reporter;
    }
.end annotation


# static fields
.field private static volatile REPORTER:Llibcore/io/DropBox$Reporter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llibcore/io/DropBox$DefaultReporter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llibcore/io/DropBox$DefaultReporter;-><init>(Llibcore/io/DropBox$DefaultReporter;)V

    sput-object v0, Llibcore/io/DropBox;->REPORTER:Llibcore/io/DropBox$Reporter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addData(Ljava/lang/String;[BI)V
    .locals 1

    invoke-static {}, Llibcore/io/DropBox;->getReporter()Llibcore/io/DropBox$Reporter;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Llibcore/io/DropBox$Reporter;->addData(Ljava/lang/String;[BI)V

    return-void
.end method

.method public static addText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Llibcore/io/DropBox;->getReporter()Llibcore/io/DropBox$Reporter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Llibcore/io/DropBox$Reporter;->addText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getReporter()Llibcore/io/DropBox$Reporter;
    .locals 1

    sget-object v0, Llibcore/io/DropBox;->REPORTER:Llibcore/io/DropBox$Reporter;

    return-object v0
.end method

.method public static setReporter(Llibcore/io/DropBox$Reporter;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "reporter == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sput-object p0, Llibcore/io/DropBox;->REPORTER:Llibcore/io/DropBox$Reporter;

    return-void
.end method
