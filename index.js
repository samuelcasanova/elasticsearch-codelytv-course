const winston = require('winston');
const logger = winston.createLogger({
    level: 'info',
    format: winston.format.json(),
    defaultMeta: { service: 'app' },
    transports: [
        new winston.transports.File({ filename: 'error.log', dirname: './.data/app/var/logs', level: 'info' }),
        new winston.transports.Console({ level: 'info' })
    ],
});

setInterval(() => {
    logger.info('Info message');
    logger.error('Error message');
    logger.warn('Warning message');
}, 500);