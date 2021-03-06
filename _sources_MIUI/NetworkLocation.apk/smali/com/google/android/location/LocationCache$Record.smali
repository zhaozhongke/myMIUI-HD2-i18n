.class public Lcom/google/android/location/LocationCache$Record;
.super Ljava/lang/Object;
.source "LocationCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/LocationCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Record"
.end annotation


# instance fields
.field private final accuracy:I

.field private final confidence:I

.field private final lat:D

.field private final lng:D

.field private final originTime:J


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const-wide/16 v3, 0x0

    .line 378
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v0, p0

    move-wide v5, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/location/LocationCache$Record;-><init>(IIDDJ)V

    .line 379
    return-void
.end method

.method public constructor <init>(IIDDJ)V
    .locals 0
    .parameter "accuracy"
    .parameter "confidence"
    .parameter "lat"
    .parameter "lng"
    .parameter "time"

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput p1, p0, Lcom/google/android/location/LocationCache$Record;->accuracy:I

    .line 392
    iput p2, p0, Lcom/google/android/location/LocationCache$Record;->confidence:I

    .line 393
    iput-wide p7, p0, Lcom/google/android/location/LocationCache$Record;->originTime:J

    .line 394
    iput-wide p3, p0, Lcom/google/android/location/LocationCache$Record;->lat:D

    .line 395
    iput-wide p5, p0, Lcom/google/android/location/LocationCache$Record;->lng:D

    .line 396
    return-void
.end method

.method public static read(Ljava/io/DataInput;)Lcom/google/android/location/LocationCache$Record;
    .locals 9
    .parameter "dataInput"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 366
    .local v1, accuracy:I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 367
    .local v2, confidence:I
    invoke-interface {p0}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v3

    .line 368
    .local v3, lat:D
    invoke-interface {p0}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v5

    .line 369
    .local v5, lng:D
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v7

    .line 370
    .local v7, readingTime:J
    new-instance v0, Lcom/google/android/location/LocationCache$Record;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/location/LocationCache$Record;-><init>(IIDDJ)V

    return-object v0
.end method


# virtual methods
.method public getAccuracy()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lcom/google/android/location/LocationCache$Record;->accuracy:I

    return v0
.end method

.method public getConfidence()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/google/android/location/LocationCache$Record;->confidence:I

    return v0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 399
    iget-wide v0, p0, Lcom/google/android/location/LocationCache$Record;->lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .prologue
    .line 403
    iget-wide v0, p0, Lcom/google/android/location/LocationCache$Record;->lng:D

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 419
    iget-wide v0, p0, Lcom/google/android/location/LocationCache$Record;->originTime:J

    return-wide v0
.end method

.method glocation()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const-wide v4, 0x416312d000000000L

    .line 439
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/location/protocol/GlocationMessageTypes;->GLOCATION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 441
    .local v0, gloc:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/location/protocol/GlatlngMessageTypes;->GLAT_LNG:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 442
    .local v1, latlngElement:Lcom/google/common/io/protocol/ProtoBuf;
    iget-wide v2, p0, Lcom/google/android/location/LocationCache$Record;->lat:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v6, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 443
    iget-wide v2, p0, Lcom/google/android/location/LocationCache$Record;->lng:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v7, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 444
    invoke-virtual {v0, v6, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 446
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 447
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/android/location/LocationCache$Record;->accuracy:I

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 448
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/android/location/LocationCache$Record;->confidence:I

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 449
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/google/android/location/LocationCache$Record;->originTime:J

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 451
    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lcom/google/android/location/LocationCache$Record;->accuracy:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, ","

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/google/android/location/LocationCache$Record;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/location/LocationCache$Record;->lng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/location/LocationCache$Record;->originTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/LocationCache$Record;->accuracy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/LocationCache$Record;->confidence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/DataOutput;)V
    .locals 2
    .parameter "dataOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    iget v0, p0, Lcom/google/android/location/LocationCache$Record;->accuracy:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 424
    iget v0, p0, Lcom/google/android/location/LocationCache$Record;->confidence:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 425
    iget-wide v0, p0, Lcom/google/android/location/LocationCache$Record;->lat:D

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    .line 426
    iget-wide v0, p0, Lcom/google/android/location/LocationCache$Record;->lng:D

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    .line 427
    iget-wide v0, p0, Lcom/google/android/location/LocationCache$Record;->originTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 428
    return-void
.end method
