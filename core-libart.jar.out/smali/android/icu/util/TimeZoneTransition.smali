.class public Landroid/icu/util/TimeZoneTransition;
.super Ljava/lang/Object;
.source "TimeZoneTransition.java"


# instance fields
.field private final from:Landroid/icu/util/TimeZoneRule;

.field private final time:J

.field private final to:Landroid/icu/util/TimeZoneRule;


# direct methods
.method public constructor <init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/icu/util/TimeZoneTransition;->time:J

    iput-object p3, p0, Landroid/icu/util/TimeZoneTransition;->from:Landroid/icu/util/TimeZoneRule;

    iput-object p4, p0, Landroid/icu/util/TimeZoneTransition;->to:Landroid/icu/util/TimeZoneRule;

    return-void
.end method


# virtual methods
.method public getFrom()Landroid/icu/util/TimeZoneRule;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/TimeZoneTransition;->from:Landroid/icu/util/TimeZoneRule;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Landroid/icu/util/TimeZoneTransition;->time:J

    return-wide v0
.end method

.method public getTo()Landroid/icu/util/TimeZoneRule;
    .locals 1

    iget-object v0, p0, Landroid/icu/util/TimeZoneTransition;->to:Landroid/icu/util/TimeZoneRule;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/icu/util/TimeZoneTransition;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", from={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/util/TimeZoneTransition;->from:Landroid/icu/util/TimeZoneRule;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", to={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/util/TimeZoneTransition;->to:Landroid/icu/util/TimeZoneRule;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
