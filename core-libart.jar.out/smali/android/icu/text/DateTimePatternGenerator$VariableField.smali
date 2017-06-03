.class public Landroid/icu/text/DateTimePatternGenerator$VariableField;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VariableField"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final canonicalIndex:I

.field private final string:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/icu/text/DateTimePatternGenerator$VariableField;)I
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->getCanonicalIndex()I

    move-result v0

    return v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/DateTimePatternGenerator$VariableField;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Landroid/icu/text/DateTimePatternGenerator;->-wrap0(Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    iget v0, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal datetime field:\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->string:Ljava/lang/String;

    return-void
.end method

.method public static getCanonicalCode(I)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->-get0()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCanonicalIndex()I
    .locals 1

    iget v0, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    return v0
.end method


# virtual methods
.method public getType()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->-get1()[[I

    move-result-object v0

    iget v1, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public isNumeric()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->-get1()[[I

    move-result-object v1

    iget v2, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->canonicalIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aget v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$VariableField;->string:Ljava/lang/String;

    return-object v0
.end method
